source("./src/config/index.R")

ui <- tags$html(
  tags$head(
    useShinyjs(),
    tags$link( 
      href="https://fonts.googleapis.com/css2?family=PT+Sans+Narrow:wght@400;700&display=swap", 
      rel = "stylesheet"
    ),
    
    tags$link( 
      href="https://fonts.googleapis.com/css2?family=PT+Sans+Narrow:wght@400;700&family=Rajdhani&display=swap", 
      rel = "stylesheet"
    ),
    
    tags$style(sass(sass_file("./src/styles/main.scss"),
      options = sass_options(output_style = "expanded"),
      output = "./src/styles/styles.css"
    )),
    
    tags$link(rel = "icon", href = "./assets/logos/shortLogo.png"),
    tags$meta(name = "drescription", content = "Plot Factory"),
    tags$meta(charset = "UTF-8"),
    tags$meta(name = "viewport", content = "width=device-width, initial-scale=1"),
    tags$title("Plot Factory")
    
  ), 
  tags$body(
    router_ui()
  )
)

server <- function(input, output, session) {
  router(input, output, session)
}

options(shiny.port = 3333)

shinyApp(ui, server)

