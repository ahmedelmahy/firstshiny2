#formpath=input$form
formpath="https://docs.google.com/spreadsheets/d/1VMTr0eT1C-RleMUirq1odp5LGgUTHX8RWOkXbRhrXZ8/pub?output=csv"
markslink="https://docs.google.com/spreadsheets/d/1_P1IaWKQp5M478r46NQrao5v-vGeylYnB1cf9lQROrk/pub?output=csv"
dat<-read.csv(formpath,encoding='UTF-8')
marksfile<-read.csv(markslink,encoding='UTF-8')
