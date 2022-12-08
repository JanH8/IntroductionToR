#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  selectInput("x", label = "x Dimension", choices=colnames(iris), selected="Sepal.Length"),
  selectInput("y", label="y Dimension", choices=colnames(iris), selected="Sepal.Width"),
  plotOutput("plot")
)

# Define server logic required to draw a histogram
server = function(input, output) {
  output$plot = renderPlot({
    plot(iris[,c(input$x, input$y)], col=iris$Species, pch=19)
  })
}

# Run the application
shinyApp(ui = ui, server = server)
