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
   titlePanel("Normal Statistic Probability"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         NumericInput("z_score", 
                      "z_score", 
                      value = 1, 
                      min = -5, 
                      max = 5)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         textOutput("pvalue")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$pvalue <- rendertext({
     pnorm(input$z_value, lower.tail = T)
   })
}

# Run the application 
shinyApp(ui = ui, server = server)











