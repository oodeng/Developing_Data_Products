#install.packages("shiny")
library(shiny)

shinyUI( fluidPage(
  # Application title
  titlePanel("GUESSING NUMBER GAME"),
  
  sidebarPanel(
    #numericInput('guess', 'Number', 1, min = 1, max = 500, step = 1),
    #submitButton('Submit')
    textInput('guess', 'Number', value = ""),
    h5('Please press \'Go!\' only on your first attempt, result will be appeared automatically once you have change your guessed number'),
    actionButton("goButton", "Go!"),
    br()
  ), 
  
  mainPanel(
    h2('Guess an integer between 1 and 500'),
    h5('The objective of this game is to guess an integer between
                   1 and 500 (inclusive) and try to match it with the computer\'s
                   selection'),
    h3('Results of guess'),
    h4('You entered :'),
    verbatimTextOutput("inputValue"),
    h4('Your result :'),
    verbatimTextOutput("outputValue"),
    h5('Please note that the application will continue running even
                   after you have guessed the number correctly. This is due to the
                   app developer\'s lack of skills/experience that has left this app
                   flawed. Apologies.'),
    h5('For a more comprehensive, better and visually pleasing version of
                   this game (from an awesome developer), please go to this website: http://www.funbrain.com/guess/')
  )
)
)