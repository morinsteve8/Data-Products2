# Server.ui

library(shiny)

# server logic
shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
    
# generate model using variable selected by the user
  if( input$model == "wt" ){
    plot(mtcars$wt, mtcars$mpg, main="MTCARS Data - Regression Models", xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
    abline(lm(mtcars$mpg ~ wt, data=mtcars))
  } else if ( input$model == "cyl" ){
    plot(mtcars$cyl, mtcars$mpg, main="MTCARS Data - Regression Models", xlab="Cylinders ", ylab="Miles Per Gallon ", pch=19)
    abline(lm(mtcars$mpg ~ cyl, data=mtcars))
  } else if ( input$model == "disp" ){
    plot(mtcars$disp, mtcars$mpg, main="MTCARS Data - Regression Models", xlab="Displacement ", ylab="Miles Per Gallon ", pch=19)
    abline(lm(mtcars$mpg ~ disp, data=mtcars))
  }
  })
})
