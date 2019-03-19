library(shiny)

shinyDataTableUI <- function(id) {
  
  ns <- NS(id)
  fluidPage(
    fluidRow( dataTableOutput( ns("table")) )
  )
}

shinyDataTable <- function(input, output, session, data){
  
  output$table <- renderDataTable({
        DT::datatable(data, width='1000', escape=F, filter="top", 
                  options = list( pageLength = 10, scrollX = T, selection='none', 
                                  autoWidth = F, paging=T, searchHighlight = TRUE)
                  )
    })
  
}

