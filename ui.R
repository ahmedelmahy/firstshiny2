
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
markslink_edit="https://docs.google.com/spreadsheets/d/1_P1IaWKQp5M478r46NQrao5v-vGeylYnB1cf9lQROrk/edit?usp=sharing"
shinyUI(fluidPage(headerPanel(
                        titlePanel("A program for the elective courses at Alexandria Faculty of Medicine, Egypt")),
                  sidebarPanel(
                        h3('publish the entry form and add the link here'),
                        textInput("form",""),
                        h3('edit the following form'),
                        a(href=markslink_edit, "here")
                        #selectInput('IDcolumn','select the ID column',colnames(read.csvinput$form))
                        ),
                  mainPanel(
                        tableOutput("answer"),
                        htmlOutput("selectID"),
                        htmlOutput("selectcurz"),
                        #lapply(1:4, function(i) {
                        #        uiOutput(paste0('b', i))
                        #})
                        lapply(1:10, function(i) {
                                htmlOutput(paste0('b',i))
                        }
                        
                        ))))
        
        
