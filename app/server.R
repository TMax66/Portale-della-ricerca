server <- function(input, output, session){


#elenco pubblicazioni
paper <- reactive({
  pubs %>%   
    filter(AU == input$au) %>% 
    select(  Anno = OA, Autori = "CAU" ,  "TITOLO" = `TI-INGLESE`, "Journal" = datoBibl,  "IF") %>%  
    unique() %>%  
    arrange(desc(IF)) %>% 
    mutate(link = str_extract(Journal, urlp), 
           link = paste0("<a href='",link,"'>",link,"</a>"))
})

output$pubblicazioni <- renderDataTable(server = FALSE,{ 
  datatable(paper(), class = 'cell-border stripe', rownames=FALSE, escape = FALSE,
            extensions = 'Buttons',options = list(dom="Brftip", pageLength = 10,
                                                  paging = TRUE,autoWidth = TRUE,
                                                  buttons = c('excel')))
})

}