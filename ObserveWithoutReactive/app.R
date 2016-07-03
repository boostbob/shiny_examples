library(shiny)

server <- function(input, output, session) {
  observe({
    # will only run when the app loads, never again
    print(1:10)
  })
}

ui <- basicPage({
  #
})

shinyApp(ui = ui, server = server)
