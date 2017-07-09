library(shiny)

# UI definition for application that generates regression models based on user selected variable
shinyUI(fluidPage(
  
  # Sidebar layout
  sidebarLayout(
    sidebarPanel(
      radioButtons("model", "Regression Variable",
                   c("Weight" = "wt",
                     "Cylinder" = "cyl",
                     "Displacement" = "disp"))
    ),
    mainPanel(      
      tabsetPanel(
        tabPanel("Plot",plotOutput("Plot")),
        tabPanel("Documentation",includeMarkdown("about.Rmd")))  
    )
  )
))
