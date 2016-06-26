library(shiny)
library(datasets)

mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("自动", "手动"))

shinyServer(function(input, output) {
    # 该输入被包装成响应式的表达式，引用他的表达式也会成为响应式的
    formulaText <- reactive({
        paste("mpg ~", input$variable)
    })

    # 需要使用 renderText 包装才能使响应式的
    # 不能直接赋值
    output$caption <- renderText({
        formulaText()
    })

    # 需要使用 renderPlot 包装才能使响应式的
    # 不能直接赋值
    output$mpgPlot <- renderPlot({
        boxplot(as.formula(formulaText()),
                data = mpgData,
                outline = input$outliers)
    })
})