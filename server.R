
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#formlink="https://docs.google.com/spreadsheets/d/1VMTr0eT1C-RleMUirq1odp5LGgUTHX8RWOkXbRhrXZ8/pub?output=csv"
markslink="https://docs.google.com/spreadsheets/d/1_P1IaWKQp5M478r46NQrao5v-vGeylYnB1cf9lQROrk/pub?output=csv"
library(shiny)

shinyServer(function(input, output) {
        answer<-reactive({
                answer=read.csv(input$form)})
        #output$answer<-renderTable({answer})
        output$selectID <- renderUI({ 
                selectInput("IDname","Select the ID column", choices=colnames(answer()) )
        })
        output$selectcurz <- renderUI({ 
                selectInput("curzname","Select the courses column", choices=colnames(answer()) ,multiple=TRUE)
        })
        output$printtext<- renderText(class(input$IDname))
        output$printtext2<- renderText(class(input$curzname))
        #the_code<-reactive()
        
        #output$answer<-renderTable({
        #        read.csv(markslink)
        #})
        
  })


