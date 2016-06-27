# how to run this application
# 0. library(shiny)
# 1. setwd("~/pcodes/shiny_examples/")
# 2. runApp('SingleFileApp/app.R') or print(source('SingleFileApp/app.R'))
# 3. R -e "shiny::runApp('SingleFileApp')" (single process)

# 服务器部分
serverPart <- function(input, output, session) {
  cat(str(session$clientData))

  output$distPlot <- renderPlot({
    hist(rnorm(input$obs), col = 'darkgray', border = 'white')
  })
}

# 界面部分
uiPart <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", min = 10, max = 500, value = 100)
    ),
    mainPanel(plotOutput("distPlot"))
  )
)

# let me look look ;-)
cat(class(serverPart))      # function
cat('\r\n')
cat(class(uiPart))          # shiny.tag.list list

shinyApp(ui = uiPart, server = serverPart)
