#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(

    # Application title
    titlePanel("Prediction of child's height based on parent height"),

    # Input parent height
    sidebarLayout(
        sidebarPanel(
            numericInput('height', 'Midparent height (inch)', 68, min = 50, max = 100, step = 1),
            submitButton('Submit')
        ),

        # Show a plot of the generated distribution and predicted child height
        mainPanel(
            h3('Results of predicted child height'),
            textOutput("prediction"),
            plotOutput("Plot")
        )
    )
))
