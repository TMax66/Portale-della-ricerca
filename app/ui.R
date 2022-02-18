 
  shinyUI(fluidPage(theme = shinytheme("cerulean"), 
  titlePanel( "IZSLER"), 
  
  
  navbarPage( "Ricerca",
                 tabPanel(
                   "Home"
                 ), 
                 tabPanel(
                   "Ricercatori"
                 ), 
                 tabPanel(
                   "Pubblicazioni"
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
 
 
 
 