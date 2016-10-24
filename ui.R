# Coursera - Developing Data Products- Course Project 
 

 # ui.R file for the shiny app 
 

 # This app was developed to help people choose the best car for their trip, using mtcars dataset, from [R]  
 

 library(markdown) 
 

 shinyUI(navbarPage("Car Efficiency Calculator", 
                              tabPanel("Table", 
                                                              
                                                  # Sidebar 
                                                  sidebarLayout( 
                                                        sidebarPanel( 
                                                              helpText(""), 
                                                              numericInput('cost', 'Gas Price (per gallon):', 2.00, min = 0, max = 10, step=0.05), 
                                                              numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 10000), 
                                                              numericInput('gas', 'Maximum expenditure on gas:', 50, min=1, max=1000), 
                                                              checkboxGroupInput('cyl', 'Cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4)), 
                                                              sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10), 
                                                              sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10), 
                                                              checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)) 
                                                          ), 
                                                         
                                                         
                                                        mainPanel( 
                                                             dataTableOutput('table') 
                                                          ) 
                                                    ) 
                                          ), 
                              tabPanel("Tutorial", 
                                                      mainPanel( 
                                                            includeMarkdown("about.md") 
                                                        ) 
                                                  ) 
                          ) 
           )    
