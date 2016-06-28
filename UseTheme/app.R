library(shiny)
library(shinythemes)

server <- function(input, output, session) {

}

#cerulean cosmo flatly journal readable spacelab united
ui <- fluidPage(theme=shinytheme("spacelab"),
  titlePanel("Use an existing theme"),
  sidebarLayout(
    sidebarPanel(
      h3("Note the button is black. This is different from the previous app."),
      actionButton("button", "A button")
    ),

    mainPanel(
      tabsetPanel(
        tabPanel("Plot"),
        tabPanel("Summary"),
        tabPanel("Table")
      )
    )
  )
)

shinyApp(ui = ui, server = server)
