

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    
    @State private var trailer: Video?
    @State private var isLoadingTrailer = true
    
    private let service = MovieService()
    
    
    
    private var posterURL: URL? {
        guard let path = movie.posterPath else { return nil }
        return URL(string: "\(APIConstants.imageBaseURL)\(path)")
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                poster
                
                VStack(alignment: .leading, spacing: 16) {
                    Text(movie.title)
                        .font(.largeTitle.bold())
                        .foregroundStyle(.white)
                    
                    rating
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.title2.bold())
                            .foregroundStyle(.white)
                        
                        Text(movie.overview.isEmpty ? "No description available." : movie.overview)
                            .font(.body)
                            .foregroundStyle(.gray)
                            .lineSpacing(4)
                    }
                    
                    trailerSection
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 32)
            }
        }
        .background(Color(red: 0.08, green: 0.10, blue: 0.17))
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color(red: 0.08, green: 0.10, blue: 0.17), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .task {
            trailer = try? await service.fetchTrailer(id: movie.id)
            isLoadingTrailer = false
        }
    }
    
    private var poster: some View {
        AsyncImage(url: posterURL) { image in
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 12))
        } placeholder: {
            ZStack {
                Color.gray.opacity(0.25)
                Image(systemName: "film")
                    .font(.system(size: 44))
                    .foregroundStyle(.white.opacity(0.55))
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 440)
      
    }
    
    private var rating: some View {
        HStack(spacing: 8) {
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
            
            Text(String(format: "%.1f", movie.voteAverage))
                .font(.headline)
                .foregroundStyle(.white)
        }
    }
    
    private var trailerSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Трейлер")
                .font(.title2.bold())
                .foregroundStyle(.white)

            if let trailer = trailer,
               let url = URL(string: "https://www.youtube.com/watch?v=\(trailer.key)") {
                Link(destination: url) {
                    Label("Открыть в YouTube", systemImage: "play.circle.fill")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            } else if !isLoadingTrailer {
                Text("Трейлер не найден")
                    .foregroundStyle(.gray)
            }
        }
    }
    
    
}
