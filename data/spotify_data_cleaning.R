# Get the Data
spotify_music_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv')

# remove unnecessary variables and change variable names 
library(tidyverse)
spotify_music_data %>%  
  select(-c("track_id", "track_album_id", "playlist_id")) %>%  
  rename(artist = track_artist, popularity = track_popularity, relese_date = track_album_release_date, genre = playlist_genre, subgenre = playlist_subgenre) -> spotify_music_data

colnames(spotify_music_data) # show the variables 
str(spotify_music_data) # see the structure of the data

# save it to csv 
write_csv(spotify_music_data, "spotify_music_data.csv")
