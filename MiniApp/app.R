# it's runnable ;-)
# but nothing to display

library('shiny')

server <- shinyServer(function(input, output, session) {})
ui <- shinyUI(fluidPage())

shinyApp(ui = ui, server = server)
