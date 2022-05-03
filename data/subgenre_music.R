library(tidyverse)
Spotify_Music <- read_csv("Spotify_Music.csv")

Spotify_Music %>%  
  group_by(genre, subgenre, year) %>%  
  summarise(m_popularity_genre = mean(popularity)) -> subgenre_music

write.csv(subgenre_music, "subgenre_music.csv")
