library(tidyverse)
Spotify_Music <- read_csv("Spotify_Music.csv")

Spotify_Music %>%  
  group_by(genre, subgenre, year) %>%  
  summarise(subgenre_mean = mean(popularity)) -> a

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(popularity), list(m_popularity = mean)) -> m_popularity

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(danceability), list(m_danceability = mean)) -> m_danceability

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(energy), list(m_energy = mean)) -> m_energy

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(loudness), list(m_loudness = mean)) -> m_loudness

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(acousticness), list(m_acousticness = mean)) -> m_acousticness

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(tempo), list(m_tempo = mean)) -> m_tempo

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(duration_ms), list(m_duration_ms= mean)) -> m_duration_ms

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(valence), list(m_valence = mean)) -> m_valence

Spotify_Music %>%  
  group_by(genre, year) %>%  
  summarise_at(vars(liveness), list(m_liveness = mean)) -> m_liveness

d1 <- inner_join(m_popularity, m_danceability, by =c('year', 'genre')) 
d2 <- inner_join(d1, m_energy, by =c('year', 'genre'))
d3 <- inner_join(d2, m_loudness, by = c('year', 'genre'))
d4 <- inner_join(d3, m_acousticness,  by = c('year', 'genre'))
d5 <- inner_join(d4, m_tempo, by = c('year', 'genre'))
d6 <- inner_join(d5, m_duration_ms, by = c("year", "genre"))
d7 <- inner_join(d6, m_valence, by = c('year', 'genre'))
d8 <- inner_join(d7, m_liveness, by = c('year', 'genre'))

mean_value_music_data <- d8
write.csv(mean_value_music_data, "mean_value_music_data.csv")
