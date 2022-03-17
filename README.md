## Project Proposal 

## 0. Brief Overview of what we are going to do 
- Look at the evolution of music genre trends over the last century. 
- To assess the evolution of different music genres, in the U.S., over the last century by looking at the number of streams regarding that particular genre over time. 
- See the trends regarding each genre

## 1. Project title & Team Information
### Project name: Music Trends
### Group members: 
- Faiza Niazi, fn8788a@student.american.edu 
- Sem Lukichev, sl8139a@student.american.edu 
- Jaehee Lee, jl8883a@student.american.edu

## 2. Domain and Data

### Data Preparation 

<dl>
  <dt> A brief description of the domain - what is it, and why do people care about it? </dt> 
  <dt> A description and link to the dataset. </dt> 
  <dd>The data that we are going to use is dervied from Spotify via the spotifyr package. Charlie Thompson, Josiah Parry, Donal Phipps, and Tom Wolff authored this package to make it easier to get our own data or general metadata arounds songs from Spotify's API. The Spotify data used for this project is a contiguous dataset of over 30,000 songs with 12 audio features for each track, including confidence measures like acousticness,liveness, speechiness and instrumentalness, perceptual measures like energy, loudness, danceablity and valence (positiveness), and descriptors like duration,key, tempo and mode. </dd> 
</dl> 

- [Link to the dataset](https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-01-21/readme.md)
- [spotifyr](https://www.rcharlie.com/spotifyr/)


<dl> 
  <dt> What type of dataset is it? </dt> 
  <dt> What are the items and attributes? </dt> 
 
<img src = "image_folder/variable_description.png">

  <dt> How big is it (number of items and attributes)? </dt> 
  <dd> There are 32,833 observations </dd> 
  <dd> There are 20 variables </dd> 
  
  <dt> Do you have it in hand already, and if not, why not? </dt> 
  <dd> Yes, our team have the data for our own. We derived dataset from tidytuesday github and removed unnecessary variables and renamed the variable names so that it is clear for us to analyze later. Then we saved that using write_csv in R and saved and uploaded the file to the data folder. Inside data folder we have a file called spotify_music_data.csv </dd> 
  
  
- [spotify music dataset](https://github.com/jaehee99/CSC_485_Music_Project/tree/main/data)

</dl>


## 3. Related Work
##### We found 3 significant projects or papers and described how they are relevant to our topic.

1. [Exploring the Tale of Music Through Data Visualization](https://www.analyticsvidhya.com/blog/2020/12/exploring-the-tale-of-music-through-data-visualization/)
2. 


## 4. Initial Sketches
