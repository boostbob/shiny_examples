library('shiny')

server <- function(input, output, session) {
  #
}

ui <- fluidPage(
  titlePanel("App with simple layout"),
  sidebarLayout(
    sidebarPanel("Sidebar"),
    mainPanel("This is the main panel")
  )
)

shinyApp(ui = ui, server = server)
