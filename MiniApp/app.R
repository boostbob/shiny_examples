# it's runnable ;-)
# but nothing to display

library('shiny')

server <- shinyServer(function(input, output, session) {})
ui <- shinyUI(basicPage(titlePanel('Mini Shiny App')))

shinyApp(ui = ui, server = server)
