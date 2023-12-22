library(rsconnect)

# Set your account token
rsconnect::setAccountInfo(name='victorregly',
                          token='347CC9173DB54A278BC73DF342C6AD0E',
                          secret='bh94HGNz7q9dTFeHdamfjPtzWaeeQpbpgMTFvR38')

# Deploy the app
rsconnect::deployApp(appDir = "/Users/victorregly/MyDoc/University/Master/Management/DATA/dsfba_project_test/report/shiny/")

