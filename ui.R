#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for ToothGrowth demonstration application
shinyUI(fluidPage
(
  # Application title
  titlePanel("Coursera Data Products Project assignment : Tooth Growth Data"),
  
  # Sidebar with radio buttons to pick one Supplement Type
    sidebarLayout(
      sidebarPanel(
        helpText("This application shows the effect on Tooth Growth in guinea pigs, 
                 of the use of either Ascorbic Acid (VC) or Orange Juice (OJ) as a growth supplement."),
        helpText("Please select one of the radio buttons below to view the data. 
                 Note that OJ produces best results at low dosage levels,
                 but the best overall result is obtained by a higher dose of VC."),
        radioButtons("supp", label=strong("Pick a Supplement Type"),
           choices = list("Ascorbic Acid (VC)"= 1,"Orange Juice (OJ)" = 2))
      ),
  # Show our representation of ToothGrowth data for the option picked
      mainPanel(
        plotOutput("ToothGrowthPlot")
      )
    )
  )
)