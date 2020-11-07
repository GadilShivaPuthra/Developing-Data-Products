library(shiny)

shinyUI(fluidPage(
    titlePanel("To find multiplied and division values"),
    sidebarLayout(
        sidebarPanel(
            helpText("Application is used for multiplication and division "),            
            numericInput("fno", label = h6("Number1"), value = 0),
            numericInput("sno", label = h6("Number2"), value = 0),
            actionButton("Multiply", label = "Multiply"),
            actionButton("Divide", label = "Divide")        
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel("Output",
                         p(h5("Calculated value:")),
                         textOutput("answ")
                ),
                tabPanel("EXtra Details to Help",
                         p(h4("Divider and Multiplier:")),
                         helpText("Aim is to multiply and divide numbers using application"),
                         HTML("<u><b>Formulae Used: </b></u>
                                              <br> <br>
                                              <b> Multiplication : Answer = Number1 * Number2 <br>
                                              Division : Answer = Number1 / Number2 </b>")
                         
                )
            )
        )
    )
))