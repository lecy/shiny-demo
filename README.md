# shiny-demo
These are some examples using the R Shiny package.


```{r}

library( shiny )


# basic app using both the ui.R and server.R files
runGitHub( repo="shiny-demo", username="lecy", subdir="01 - Two Files")

# the same app using only the one app.R file
runGitHub( repo="shiny-demo", username="lecy", subdir="02 - One File")

# layout demo - columns
runGitHub( repo="shiny-demo", username="lecy", subdir="03 - UI Design/Columns")

# app using leaflet maps
runGitHub( repo="shiny-demo", username="lecy", subdir="05 - Leaflet")

# app using syracuse code violation data
runGitHub( repo="shiny-demo", username="lecy", subdir="06 - OrangeSpot")



```

