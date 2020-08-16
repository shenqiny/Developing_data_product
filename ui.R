#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Prediction of child's height based on parent height"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            numericInput('height', 'Midparent height (inch)', 68, min = 50, max = 100, step = 1),
            submitButton('Submit')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3('Results of predicted child height'),
            textOutput("prediction"),
            plotOutput("Plot")
        )
    )
))
