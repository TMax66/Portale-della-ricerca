 
  shinyUI(fluidPage(theme = shinytheme("cerulean"), 
                    tags$style(
                      "p, div { color: red; }"
                    ),
  titlePanel( ""), 
  
  
  navbarPage( "",
                 tabPanel(
                   "Home", 
                   fluidPage(
                     h1("La Ricerca in IZSLER"), 
                     
                     setBackgroundImage(
                       src = "../ricerca.jpg"
                   )
                   
                   

                 )), 
                 tabPanel(
                   p("Ricercatori")
                 ), 
                 tabPanel(
                   "Pubblicazioni", 
                   fluidPage(
                     
                     tableOutput("paper")
                     
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
                 ), 
                 
                 )
                 
  
  
 
   
  )
  )
 
 
 
 