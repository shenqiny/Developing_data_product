#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(HistData)
data("Galton")

fit<-lm(child~parent, Galton)
prediction_c<-function(height) {predict(fit, newdata = data.frame(parent=height))}


shinyServer(function(input, output) {
       output$prediction <- renderText({prediction_c(input$height)})

    output$Plot <- renderPlot({
        
        plot(jitter(Galton$child), Galton$parent)
        abline(lm(Galton$child ~ Galton$parent))

    })

})
