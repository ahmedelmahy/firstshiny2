
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
                        a(href=markslink_edit, "here"),
                        actionButton('distribute','Go!')
                        
                        #selectInput('IDcolumn','select the ID column',colnames(read.csvinput$form))
                        ),
                  mainPanel(
                        tableOutput("answer"),
                        htmlOutput("selectID"),
                        htmlOutput("selectcurz"),
                        h3('number needed for every course separated by a comma'),
                        textInput('num','',''),
                        tableOutput('try1'),
                        htmlOutput('try2'),
                        htmlOutput('try3'),
                        htmlOutput('try4')
                        
                        )))
        
        
