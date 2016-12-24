
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#formlink="https://docs.google.com/spreadsheets/d/1VMTr0eT1C-RleMUirq1odp5LGgUTHX8RWOkXbRhrXZ8/pub?output=csv"
markslink="https://docs.google.com/spreadsheets/d/1_P1IaWKQp5M478r46NQrao5v-vGeylYnB1cf9lQROrk/pub?output=csv"
library(shiny)

shinyServer(function(input, output) {
        answer=reactive({read.csv(input$form)})
        output$selectID <- renderUI({ 
                selectInput("IDname","Select the ID column", choices=colnames(answer()))})
                   
        
        output$selectcurz<-renderUI({ 
                selectInput("curzname","Select the courses column", choices=colnames(answer()) 
                                                  ,multiple=TRUE)})
        
        
        output$try2=renderPrint({input$IDname})
        output$try3=renderPrint({input$curzname})
        output$try4=renderPrint({input$num})
        
        
        
        #
        observeEvent(input$distribute,{
                formpath=input$form
                dat<-read.csv(formpath,encoding='UTF-8')
                marksfile<-read.csv(markslink,encoding='UTF-8')
                
                
                
                
                
                
                
                
                
                
                
                
                
        })
        
  
        })
        
   


        
 # })