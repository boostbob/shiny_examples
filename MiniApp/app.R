# it's runnable
# but nothing to display

library('shiny')

server <- shinyServer(function(input, output, session) {})
#server <- function(input, output, session) {}
#server <- function(input, output) {}

ui <- shinyUI(basicPage(titlePanel('Mini Shiny App')))
#ui <- basicPage()

shinyApp(ui = ui, server = server)
