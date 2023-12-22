# Load required libraries
library(shiny)
library(shinydashboard)
library(shinyjs)

# Define UI
ui <- dashboardPage(
  dashboardHeader(title = "Image Slideshow"),
  dashboardSidebar(),
  dashboardBody(
    useShinyjs(),
    tags$head(
      tags$style(
        HTML("
             #image-container {
               max-height: 80vh;
               margin: 0 auto;
               text-align: center;
             }
             ")
      )
    ),
    fluidRow(
      column(width = 12, align = "center",
             imageOutput("image"),
             br(),
             sliderInput("image_slider", "Select Year:",
                         min = 2014, max = 2021, value = 2014, step = 1)
      )
    )
  )
)

# Define server
server <- function(input, output, session) {
  output$image <- renderImage({
    # Get the selected image file path
    image_path <- sprintf("/Users/victorregly/MyDoc/University/Master/Management/DATA/dsfba_project_test/report/shiny/map_%d.png", input$image_slider)
    
    # Return a list containing the filename and alt text
    list(src = image_path, width = "100%", height = "auto", alt = "Image")
  }, deleteFile = FALSE)
  
  outputOptions(output, 'image', suspendWhenHidden = FALSE)
}

# Run the Shiny app
shinyApp(ui, server)


