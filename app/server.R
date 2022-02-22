server <- function(input, output, session){


#elenco pubblicazioni
paper <- reactive({
  pubs %>%   
    filter(AU == input$au) %>% 
    select(  Anno = OA, Autori = "CAU" ,  "TITOLO" = `TI-INGLESE`, "Journal" = datoBibl,  "IF") %>%  
    unique() %>%  
    arrange(desc(IF)) %>% 
    mutate(link = str_extract(Journal, urlp), 
           link = paste0("<a href='",link,"'target='_blank'>","Vai all'articolo","</a>"))
})





output$pubblicazioni <- renderDataTable(server = FALSE,{ 
  datatable(paper(), class = 'cell-border stripe', rownames=FALSE, escape = FALSE,
            extensions = 'Buttons',options = list(dom="Brftip", pageLength = 10,
                                                  paging = TRUE,autoWidth = TRUE,
                                                  buttons = c('excel')))
})



# elenco progetti

Prj <- reactive({
  prj%>%
    group_by(CodIDIzler, Tipologia, DataInizio, DataFine, Descrizione, RespScient) %>%
    summarise(Budget = sum(Budget), nUO = n()) #%>%
  
})

output$progetti <- renderDataTable( server = FALSE, {  
              datatable(Prj(), class = 'cell-border stripe', rownames=FALSE,
                         extensions = 'Buttons',options = list(dom="Brftip", pageLength = 10,
                                                               paging = TRUE,autoWidth = TRUE,
                                                               buttons = c('excel')))
})
 



}