//
//  HomeView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct HomeView: View {
    
    let songNameArray:[String] = ["Karpur Gauram", "One More Light", "My Universe", "Every Second", "Alag Aasmaan", "When We Feel Young"]
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    let artistNameArray:[String] = ["Nandish The Band", "Linkin Park", "Coldplay", "Mina Okabe", "Anuv Jain", "When Chai Met Toast"]
    
    
    
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
                    ForEach((1...6), id: \.self) { index in
                        NavigationLink(destination: SongView(artistName: artistNameArray[index-1], songImageName: "\(index)-song", songName: songNameArray[index-1])) {
                            RecentCard(imageName: "\(index)-song", songName: (songNameArray[index-1]))

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
                        ForEach((1...6), id: \.self) { index in
                            ArtistCard(artistImageName: "\(index)-artist", artistName: artistNameArray[index-1])
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
    }
}
