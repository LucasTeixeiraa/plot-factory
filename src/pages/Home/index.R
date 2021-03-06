uiHome <- tags$div(
  class = "home",
  sideBarPanel(id = "sideBarPanelHome"),
  mainPanel(
    mainText = mainText(
      title = "Seja bem-vindo!",
      text = "A Plot Factory é uma plataforma voltada para criação de gráficos 
              interativos através da ferramenta estatística Shiny disponível no R."
    ),
    mainButton(
      mainButton = pageTransitionButton(
        id = "pageTransitionButtonHome",
        label = "Importar Dados"
      ),
      p("Clique aqui para começar")
    )
  )
)

serverHome <- function(input, output, session) {
  sideBarPanelServer(id = "sideBarPanelHome")
  
  pageTransitionButtonServer(id = "pageTransitionButtonHome", page = "dataImport")
}