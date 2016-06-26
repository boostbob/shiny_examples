library(shiny)

shinyUI(pageWithSidebar (
    headerPanel("Hello Shiny"),

    # side section
    sidebarPanel(),
    
    # main section
    mainPanel()
))