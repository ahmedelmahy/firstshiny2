
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(headerPanel(
                        titlePanel("A program for the elective courses at Alexandria Faculty of Medicine, Egypt")),
                  sidebarPanel(
                        h3('hi'),
                        textInput("question",""),
                        h3('2-'),
                        actionButton('action','do it')),
                  mainPanel(
                        tableOutput("answer"))
        
        
        
        ))
