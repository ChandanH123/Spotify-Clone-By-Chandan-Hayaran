//
//  HomeView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: ViewModel

    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    

    
    
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20)
            {
                HStack {
                    Text("Good afternoon")
                        .font(Font.custom("Gotham-Black", size: 25))
                        .foregroundColor(.white)
                        
                        Spacer()
                        
                    HStack(spacing: 15) {
                        Image(systemName: "bell")
                        Image(systemName: "clock.arrow.circlepath")
                        Image(systemName: "gearshape")
                        }
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                    }
                .padding()
                    
                    
                    
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.items[0].playlist.tracks) { track in
                        NavigationLink(destination: SongView(artistName: track.artists.name, songImageName: track.coverArt, songName: track.name)) {
                            RecentCard(imageName: track.coverArt, songName: (track.name))

                        }
                    }
                }
                
                  
                
                HStack {
                    Text("Suggested artists")
                        .font(Font.custom("Gotham-Black", size: 25))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                }
                .padding()
                
                   
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(viewModel.items[0].playlist.tracks) { track in
                            
                            ArtistCard(artistImageName: track.artists.artistImage, artistName: track.artists.name)
                        }
                    }
                    
                }
                
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
            .environmentObject(ViewModel())
    }
}
