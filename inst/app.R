if (interactive()) {

  library(shiny)
  library(shinydashboard)
  library(shinyWidgets)

  # example taken from ?box
  header <- dashboardHeader(title = "Stormwater Heatmap Hydrology Data",
                            dropdownMenu(icon = icon("download"),
                                         taskItem(
                                           "xxx is ready for download", color = "black"
                                         )))

  sidebar <- dashboardSidebar(sidebarMenu(id = "tabs",
                                          menuItem("About"),
                                          menuItem("Download Data",
                                                   menuSubItem("For a single location"))
                                          ))

  body <- dashboardBody()

ui <-   dashboardPage(skin = "green", header, sidebar, body)





  server <- function(input, output, session) {


  }

  shinyApp(ui, server)

}
