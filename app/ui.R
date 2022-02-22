 
  shinyUI(fluidPage(
    theme = bs_theme(bootswatch = "cerulean"),
    
    #shinythemes::themeSelector(),
    #theme = shinytheme("cerulean"), 
                    # tags$style(
                    #   "p, div { color: red; }"
                    # ),
  titlePanel(""), 
  
  
  navbarPage( "IZSLER",
              
                 tabPanel(
                   "Home", 
                   fluidPage(
                     setBackgroundImage(
                       src = "../Cattura.PNG"
                   ),
                   br(),br(),br(),br(),br(),
                   
                   column(4, 
                   h4("L’ IZSLER svolge attività di RICERCA, di base e finalizzata, 
                      per lo sviluppo delle conoscenze nell’igiene e sanità veterinaria, 
                      secondo programmi e mediante convenzioni con Università e Istituti 
                      di ricerca italiani e stranieri, nonché su richiesta dello Stato, 
                      di Regioni ed Enti pubblici e privati.")
                   )

                 )), 
                 tabPanel(
                   "Ricercatori"
                 ), 
                 tabPanel(
                   "Pubblicazioni", 
                   fluidPage(
                     column(4, 
                      
                        br(),
                       fluidRow( 
                         
                     selectInput("au", "Ricercatore", 
                                 choices = unique(factor(pubs$AU)))
                    
                     )), 
                     br(),br(), br(), 
                     
                     dataTableOutput("pubblicazioni")
                     
                   )
                   
                 ), 
                 navbarMenu("Linee di Ricerca", 
                   tabPanel("Salute Animale"), 
                   tabPanel("Benessere Animale"),
                   tabPanel("Sicurezza Alimentare")
                   ), 
              
                 tabPanel(
                "Progetti di Ricerca", 
                fluidPage(
                  # column(4, 
                  #        
                  #        br(),
                  #        fluidRow( 
                  #          
                  #          selectInput("au", "Ricercatore", 
                  #                      choices = unique(factor(pubs$AU)))
                  #          
                  #        )), 
                  br(),br(), br(), 
                  
                  dataTableOutput("progetti")
                  
                )
                
                
                
                 ), 
                 tabPanel(
                   "Centri di Referenza" 
                 )
                 
                 )
                 
  
  
 
   
  )
  )
 
 
 
 