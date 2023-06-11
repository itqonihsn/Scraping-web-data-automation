# Subset 10 mata uang crypto tertinggi
bitcoin <- subset(df1, Rank == '1')
Ethereum <- subset(df1, Rank == '2')
Tether <- subset(df1, Rank == '3')
BNB <- subset(df1, Rank == '4')
USDCoin <- subset(df1, Rank == '5')
XRP <- subset(df1, Rank == '6')
Cardano <- subset(df1, Rank == '8')
Dogecoin <- subset(df1, Rank == '9')
Solana <- subset(df1, Rank == '10')
TRON <- subset(df1, Rank == '11')

# ui
ui <- fluidPage(
  titlePanel("Table Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("tableSelect", "Select Table:",
                  choices = c("bitcoin", "Ethereum", "Tether","BNB", "USDCoin", "XRP","Cardano", "Dogecoin", "Solana","TRON"),
                  selected = "bitcoin")
    ),
    mainPanel(
      tableOutput("displayTable")
    )
  )
)
server <- function(input, output) {
  
  # Render table based on sidebar selection
  output$displayTable <- renderTable({
    table_choice <- input$tableSelect
    
    if (table_choice == "bitcoin") {
      bitcoin
    } else if (table_choice == "Ethereum") {
      Ethereum
    } else if (table_choice == "Tether") {
      Tether
    } else if (table_choice == "BNB") {
      BNB
    } else if (table_choice == "USDCoin") {
      USDCoin
    } else if (table_choice == "XRP") {
      XRP
    } else if (table_choice == "Cardano") {
      Cardano
    } else if (table_choice == "Dogecoin") {
      Dogecoin
    } else if (table_choice == "Solana") {
      Solana
    } else if (table_choice == "TRON") {
      TRON
    }
  })
  
}

shinyApp(ui = ui, server = server)
