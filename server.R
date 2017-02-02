#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

suppressWarnings(library(shiny))
suppressWarnings(library(ggplot2))

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  data(ToothGrowth)
  t <- ToothGrowth
  
  output$ToothGrowthPlot <- renderPlot({
    
    # Generate data frames from checkbox values, and render appropriate boxplot
    # Vitamin C
    if (input$supp == 1) {
      t_vc <- t[t$supp=='VC',]
      boxplot(len ~ dose, t_vc, col=5, ylab="Tooth Length in mm", 
              xlab="Dose Amount in mg",
              main = "Tooth Length by Dose Given - VC") 
    } else {
    # Orange Juice
      t_oj <- t[t$supp=='OJ',]
      boxplot(len ~ dose, t_oj, col=7, ylab="Tooth Length in mm", 
              xlab="Dose Amount in mg",
              main = "Tooth Length by Dose Given - OJ")     
    }

  })
  
})
