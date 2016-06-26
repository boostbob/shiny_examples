library(shiny)

shinyUI(pageWithSidebar (
    headerPanel("Shiny 第一个应用"),

    # side section
    sidebarPanel(
        selectInput('variable', "变量", 
                    list("Cylinders" = "cyl",
                         "Transmission" = "am",
                         "Gears" = "gear")),

        checkboxInput("outliers", "显示异常值", FALSE)
    ),
    
    # main section
    mainPanel(
        h3(textOutput('caption')),
        plotOutput("mpgPlot")
    )
))