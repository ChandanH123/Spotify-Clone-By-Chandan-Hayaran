//
//  SongView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 17/03/22.
//

import SwiftUI

struct SongView: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var artistName: String
    var songImageName: String
    var songName: String
    
    @State private var heartIcon = false
    @State private var playIcon = false
    
    @State private var menuBoxShow = false
    
    
    var backButton: some View {
        Button(action: {
            print("Back Button Pressed.")
            presentationMode.wrappedValue.dismiss()
                },
               label: {
                Image(systemName: "chevron.down")
                    .font(Font.system(size: 30))
                    .rotationEffect(.degrees(90))
                }
        )
    }
    
    var menuButton: some View {
        Button(action: {
            print("Menu Button Pressed.")
            withAnimation(.spring()) {
                menuBoxShow.toggle()
            }
                },
               label: {
                Image(systemName: "ellipsis")
                    .font(Font.system(size: 30))
                    .rotationEffect(.degrees(90))
            
                }
        )
    }
    
    
    var menuBox: some View {
        ZStack {
            Rectangle()
                .opacity(0.5)
                .background(.bar)
            
            VStack(spacing: 20) {
                
                Button("Add to playlist", action: { })
                
                Button("View Artists", action: { })
                       
                Button("Show Credits", action: { })
                
                Button("Share", action: { })
            
            }
            .padding()
               
         }
        .cornerRadius(20)
        .frame(width: 150, height: 200)
        .offset(x: 110, y: -260)
        
        
        
    }
    
    var body: some View {
        ZStack {
            VStack {
                
                VStack(spacing: 20) {
                    HStack {
                        backButton
                        Spacer()
                        VStack {
                            Text("Playing From Artist")
                                .font(Font.custom("GothamBook", size: 12))
                            .textCase(.uppercase)
                            Text(artistName)
                                .font(Font.custom("Gotham-Black", size: 16))
                        }
                        Spacer()
                        
                        menuButton
                        
                        
                        
                    }.padding()
                    
                    AsyncImage(url: URL(string: songImageName))
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 330, height: 330)
                        .clipShape(Rectangle())
                    
                }
                
                
               
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
                .padding(.vertical)
                .padding(.horizontal, 30)
                    
                
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
                .padding(.vertical)
                .padding(.horizontal, 30)
                
                
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
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
                
                
                Spacer()
            }
            menuBox
                .opacity(menuBoxShow ? 1 : 0)
            
        }.navigationBarHidden(true)
    }
}




struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(artistName: "Nandish The Band", songImageName: "https://i.scdn.co/image/ab67616d00001e02164b43d387d300e3a0e106f9", songName: "Karpur Gauram")
            .preferredColorScheme(.dark)
    }
}
