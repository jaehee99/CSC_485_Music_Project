# Get the Data
spotify_music_data <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv')

# remove unnecessary variables and change variable names 
library(tidyverse)
spotify_music_data %>%  
  select(-c("track_id", "track_album_id", "playlist_id")) %>%  
  rename(artist = track_artist, popularity = track_popularity, release_date = track_album_release_date, genre = playlist_genre, subgenre = playlist_subgenre) -> spotify_music_data

colnames(spotify_music_data) # show the variables 
str(spotify_music_data) # see the structure of the data

# Extract only 'year' from release_date variable and then assign it to new variable called "year"
spotify_music_data %>%
  mutate(year = format(as.Date(release_date), "%Y")) -> updated_spotify_music_data
sum(is.na(updated_spotify_music_data$year)) # There are 1886 NAs in this "year" variable 
# The reason why there are NAs? It is because release_date variable has non-consistent format of date
# For example, "2019-06-14" or "2011"

updated_spotify_music_data$year <- ifelse(is.na(updated_spotify_music_data$year), 
                                          updated_spotify_music_data$relese_date, 
                                          updated_spotify_music_data$year) # Use ifelse statement to replace NAs with year values in release_date variable 
sum(is.na(updated_spotify_music_data$year)) # check if it is resolved
head(updated_spotify_music_data) # show first 6 rows to check how it is going 
names(updated_spotify_music_data) # show the variable names 
updated_spotify_music_data %>%  
  select(c("track_name", "track_album_name", "playlist_name","artist", "popularity", "genre", "subgenre", "year", "danceability", "energy", "key", "loudness", "mode", "speechiness", "acousticness", "instrumentalness", "liveness", "valence", "tempo", "duration_ms")) -> spotifyMusic
write_csv(spotifyMusic, "spotifyMusic.csv")
