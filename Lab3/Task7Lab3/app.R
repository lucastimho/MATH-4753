#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(ggplot2)

spruce.df = read.csv("SPRUCE.csv")
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Height vs BHDiameter"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            selectInput("plotg", "Choose Plot type"
                        , list(`plot`=c("line", "points", "line + points")))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function() {

    renderPlot({
        g = ggplot(spruce.df, aes(x=BHDiameter, y=Height)) + geom_point()
        
        l = abline(spruce.lm)
        
        if(input$plotg=="line") print(l)
        
        if(input$plotg=="points") print(g)
        
        if(input$plotg=="line + points") {
          print(g)
          print(l)
        }
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
