library(tidyverse)
Spotify_Music <- read_csv("Spotify_Music.csv")

colnames(Spotify_Music)

Spotify_Music %>%  
  select(c( "genre", "popularity","danceability", "energy", "loudness",  "acousticness", "valence", 
            "liveness", "tempo", "duration_ms"
            )) -> histogram_data

write.csv(histogram_data, "histogram_data.csv")
