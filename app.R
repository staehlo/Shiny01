library(shiny)

x <- seq(from = 0, to = 2*pi, length = 100)
y <- sin(x)

# Define UI ----
ui <- fluidPage(
  
 plotOutput("myplot") 
  
)

# Define server logic ----
server <- function(input, output) {

  output$myplot <-renderPlot({
    plot(x = x, y = y, pch = 19, col = "maroon")
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)
