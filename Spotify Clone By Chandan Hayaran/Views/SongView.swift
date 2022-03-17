//
//  SongView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 17/03/22.
//

import SwiftUI

struct SongView: View {
    
    var artistName: String
    var songImageName: String
    var songName: String
    
    @State var heartIcon = false
    @State var playIcon = false
    
    var body: some View {
        VStack {
            VStack(spacing: 50) {
                HStack {
                    Image(systemName: "chevron.down")
                        .font(Font.system(size: 30))
                        .opacity(0)
                    Spacer()
                    VStack {
                        Text("Playing From Artist")
                            .font(Font.custom("GothamBook", size: 12))
                        .textCase(.uppercase)
                        Text(artistName)
                            .font(Font.custom("Gotham-Black", size: 16))
                    }
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(Font.system(size: 30))
                        .rotationEffect(.degrees(90))
                }.padding()
                
                Image(songImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 350)
                    .clipShape(Rectangle())
            }
            
            VStack(spacing: 0) {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(songName)
                            .font(Font.custom("Gotham-Black", size: 25))
                        Text(artistName)
                            .font(Font.custom("Gotham-Black", size: 18))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    
                    Toggle(isOn: $heartIcon, label: {
                    })
                        .font(Font.system(size: 30))
                    .toggleStyle(heartToggle())
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.gray)
                        .frame(height: 4)
                        .overlay(Circle()
                        .size(width: 15, height: 15)
                                    .offset(y: -5))
                    HStack {
                        Text("0:00")
                            .font(Font.custom("GothamBook", size: 15))
                        Spacer()
                        Text("4:03")
                            .font(Font.custom("GothamBook", size: 15))
                    }
                    .opacity(0.8)
                }
                .padding()
            }
            
            HStack {
                Image(systemName: "shuffle")
                    .font(Font.system(size: 30))
                Spacer()
                Image(systemName: "backward.end.fill")
                    .font(Font.system(size: 30))
                Spacer()
                Toggle(isOn: $playIcon, label: {
                })
                .toggleStyle(playToggle())
                    .font(Font.system(size: 30))
                    .foregroundColor(.black)
                    .background(Circle().size(width: 80, height: 80)
                                    .offset(x: -26, y: -25))
                    
                Spacer()
                Image(systemName: "forward.end.fill")
                    .font(Font.system(size: 30))
                Spacer()
                Image(systemName: "arrow.rectanglepath")
                    .font(Font.system(size: 30))
                    .rotationEffect(.degrees(180))
            }.padding()
                .offset(y: -10)
            
            Spacer()
        }
        .offset(y: -70)
        .preferredColorScheme(.dark)
    }
}




struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(artistName: "Nandish The Band", songImageName: "2-song", songName: "Karpur Gauram")
    }
}
