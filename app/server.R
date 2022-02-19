server <- function(input, output, session){}


#elenco pubblicazioni
paper <- reactive({
  pubs %>%  
    select(NR, Autori = "CAU" , `TITOLO RIVISTA`= "JO","TITOLO" = `TI-INGLESE`,  "IF" ) %>% 
    unique() %>%  
    arrange(desc(IF))
})

output$paper <- renderDT(server = FALSE,{ 
  datatable(paper(), class = 'cell-border stripe', rownames=FALSE,
            extensions = 'Buttons',options = list(dom="Brftip", pageLength = 10,
                                                  paging = TRUE,autoWidth = TRUE,
                                                  buttons = c('excel')))
})