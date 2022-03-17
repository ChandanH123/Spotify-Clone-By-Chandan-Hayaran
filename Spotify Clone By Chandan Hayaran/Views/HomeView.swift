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
            GridItem(.adaptive(minimum: 175))
        ]
    
    let artistNameArray:[String] = ["Nandish The Band", "Linkin Park", "Coldplay", "Mina Okabe", "Anuv Jain", "When Chai Met Toast"]
    
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 35) {
                    
                    VStack {
                        HStack(spacing: 15) {
                            Text("Good afternoon")
                                .font(Font.custom("Gotham-Black", size: 25))
                                .frame(width: 210)
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
                        
                        
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach((1...6), id: \.self) { index in
                                NavigationLink(destination: SongView(artistName: artistNameArray[index-1], songImageName: "\(index)-song", songName: songNameArray[index-1])) {
                                    RecentCard(imageName: "\(index)-song", songName: (songNameArray[index-1]))
                                }
                            }
                        }
                        .padding(.horizontal, 10)
                        
                    }
                
                    
                    
                    VStack() {
                        HStack(spacing: 15) {
                            Text("Good afternoon")
                                .font(Font.custom("Gotham-Black", size: 25))
                                .frame(width: 210)
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
                            .padding(.vertical, 20)
                        }
                    }
                    
                    Spacer()
                
                CurrentlyPlayingBar(imageName: "1-song", songName:songNameArray[0])
                    .offset(y: -50)
                }
            .offset(y: -40)
            .preferredColorScheme(.dark)
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
