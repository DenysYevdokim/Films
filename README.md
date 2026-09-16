
# Films App
An app for browsing popular movies and viewing their details, ratings, and trailers using the TMDB API.
<p align="center">
  <img src="https://github.com/user-attachments/assets/6cc040b3-b499-491c-8d63-145646b57665" width="250">
</p>

## Features

- Search movies by title
- View movie details and trailers
- Local caching for faster loading and offline access
- Account screen

## Technologies

- SwiftUI
- Swift Concurrency (async/await)
- MVVM architecture
- Custom caching layer for images and movie data

## How to run the project

1. Clone the repository
2. Set up the API key
   1. Save the `Secrets.xcconfig` file with the key (sent separately)
   2. Open the `Films` project folder and place the saved `Secrets.xcconfig` file into the `Config` folder
   3. Open `Films.xcodeproj` in Xcode and run the project
