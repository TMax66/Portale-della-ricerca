 
  shinyUI(fluidPage(theme = shinytheme("cerulean"), 
                    # tags$style(
                    #   "p, div { color: red; }"
                    # ),
  titlePanel("RICERCA"), 
  
  
  navbarPage( "IZSLER",
                 tabPanel(
                   "Home", 
                   fluidPage(
                     setBackgroundImage(
                       src = "../ricerca.jpg"
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
                     wellPanel( 
                        
                       fluidRow( 
                         column(4, 
                     selectInput("au", "Ricercatore", 
                                 choices = unique(factor(pubs$AU)))
                     )
                        
                     )), 
                     
                     dataTableOutput("pubblicazioni")
                     
                   )
                   
                 ), 
                 navbarMenu("Linee di Ricerca", 
                   tabPanel("Salute Animale"), 
                   tabPanel("Benessere Animale"),
                   tabPanel("Sicurezza Alimentare")
                   ), 
              
                 tabPanel(
                "Progetti di Ricerca"
                 ), 
                 tabPanel(
                   "Centri di Referenza" 
                 )
                 
                 )
                 
  
  
 
   
  )
  )
 
 
 
 