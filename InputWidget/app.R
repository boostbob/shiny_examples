library(shiny)

server <- function(input, output, session) {

}

ui <- basicPage(
  h3("A couple of simple widgets that don't do anything yet"),
  sliderInput(inputId = "myslider",
              label = "Limit the ", min = 0,
              max = 100, value = c(40, 60)),
  textInput(inputId = "mytext", label = "Text input", value = "Enter text..."))


shinyApp(ui = ui, server = server)
