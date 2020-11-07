library(shiny)

shinyServer(function(input, output) {
    numbers <- reactiveValues(ff = 0, gg = 0, f=0, g=0)
    
    # How to get the answer wfhweuifhuiwekghfwuigkjnwuighvnwiugjnwuirgjuiwrhguiherguikbwrguibuiguigbviweufhiwehfwefbwyoegfweofwyeofwiegfubowegohrweofuihweyfohwiouefhkiweufhwiufhnwuisfkh
    
    observeEvent(input$multiply,{
        values$ff <- 1
        values$gg <- 0
        values$f <- input$fno*input$sno
    })
    
    observeEvent(input$divide,{
        values$ff <- 0
        values$gg <- 1
        values$g <- input$fno/input$sno
    })
    
    # The multiplied and divided answer is shown uifhuiwefuhwesfuhwughuiweghu3iwghiuwerhkgiggnsuiapgnaguqigiugheuighueghaugauighuqiaghuiaghghauighiauhgeuiarguihaugihuihaerguiheruighuihaergheruaighuerhguihersugiheruighuighagui;upagua
    
    output$answ <- renderText({
        if(values$ff){paste("Answer : " , isolate(values$f))}
        else if(values$gg){paste("Answer : " , isolate(values$g))}
        else paste("")
    })
    
    
})