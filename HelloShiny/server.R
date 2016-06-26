library(shiny)
library(datasets)

mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("自动", "手动"))

shinyServer(function(input, output) {
    # 调试信息
    cat('Shiny is really cool')

    # 调试语句，只有交互式运行才会中断
    # browser()
    
    # 选择am的时候中断运行，进入调试器
    # browser(expr = identical(input$variable, "am"))

    # 错误发生的时候自动进入浏览器
    options(error = browser)
    # 设置recover为错误处理器，打印堆栈和调用列表 
    options(error = recover)

    # 该输入被包装成响应式的表达式，引用他的表达式也会成为响应式的
    formulaText <- reactive({
        paste("mpg ~ ", input$variable)
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