
# Example of UI and Server files on one page


# One nice feature about single-file apps is that you can copy 
# and paste the entire app into the R console, which makes it 
# easy to quickly share code for others to experiment with. For 
# example, if you copy and paste the code above into the R command 
# line, it will start a Shiny app.





## USER INTERFACE 

my.ui <- fluidPage(

  # Application title
  titlePanel("Hello Shiny!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)





## SERVER

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  
my.server <- function(input, output) 
{


  
  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
  
}



# LAUNCH THE APP !

shinyApp( ui = my.ui, server = my.server )