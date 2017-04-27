#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Mittquadratmethode"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        textInput(inputId="Clock",label="Aktuelle Uhrzeit:", value=format(Sys.time(), "%H:%M")),
        actionButton(inputId="Step", label="Nächster Schritt")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         uiOutput("steps")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   clock <- input$Clock
   output$steps <- renderUI({h1("test")})
}

# Run the application 
shinyApp(ui = ui, server = server)

