library(shiny)
library(ggplot2)


 
my.server <- function(input, output) {
 

  output$distPlot <- renderPlot({

    x    <- faithful[, 2]  # Old Faithful Geyser data
    # draw the histogram with the specified number of bins
    hist(x, breaks = 25, col = 'darkgray', border = 'white')
    
  })
  
}




my.ui <- fluidPage(

  title = "Columns Demo",
  
  plotOutput('distPlot'),
  
  hr(),

  fluidRow(

    column(3,
      h4("Column One"),
      sliderInput('sampleSize', 'Sample Size', 
                  min=1, max=50000,
                  value=1000, 
                  step=500, round=0),
      br(),
      checkboxInput('jitter', 'Jitter'),
      checkboxInput('smooth', 'Smooth')
    ),
    
    
    column(4, 
      h4("Column Two"),
      br(),
      checkboxInput('one', 'One'),
      checkboxInput('two', 'Two'),
      checkboxInput('three', 'Three'),
      checkboxInput('four', 'Four')      
    ),
    
    
    column(4,
      h4("Column Three"),
      br(),
      sliderInput('womp', 'Womps', 
                  min=1, max=50, value=35),
      br(),
      sliderInput('snidgets','Snidgets', 
                  min=30,max=63, value=54)
    )
    
    
  ) # end of fluid row
  
)





# LAUNCH THE APP !

shinyApp( ui = my.ui, server = my.server )




