//
//  CurrentlyPlayingBar.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI
import Marquee

struct CurrentlyPlayingBar: View {
    var imageName: String
    var songName: String
    @State var heartIcon = false
    @State var playIcon = false
    @State private var go = false
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: .topLeading)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundColor(.white)
                .padding(.top)
                .padding(.leading)
                .padding(.bottom)

            Marquee {
            Text(songName)
                .font(.custom("Gotham-Black", size: 14))
                .foregroundColor(.white)
            }.marqueeDuration(10.0)
            
           
            
            HStack(spacing: 20) {
                Image(systemName: "hifispeaker.and.appletv")
                Toggle(isOn: $heartIcon, label: {
                })
                .toggleStyle(heartToggle())
                
                Toggle(isOn: $playIcon, label: {
                })
                .toggleStyle(playToggle())
            }
            .font(.system(size: 25))
            .foregroundColor(.white)
            .padding()
       
            Spacer()
                    
            }// hstack
            .background(RoundedRectangle(cornerRadius: 8)
            .opacity(0.2))
            .frame(height: 70)
            
            
            
    }// body

}


struct heartToggle: ToggleStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
 
        return HStack {
 
            configuration.label
 
            Image(systemName: configuration.isOn ? "heart.fill" : "heart")
                .onTapGesture {
                    
                    if configuration.isOn {
                        print("heart.fill")
                    }
                    else {
                        print("heart")
                    }

                    configuration.isOn.toggle()
                }
        }
 
    }
}

struct playToggle: ToggleStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
 
        return HStack {
 
            configuration.label
 
            Image(systemName: configuration.isOn ? "pause.fill" : "play.fill")
                .onTapGesture {
                    
                    if configuration.isOn {
                        print("pause.fill")
                    }
                    else {
                        print("play.fill")
                    }
                    
                    configuration.isOn.toggle()
                }
        }
 
    }
}


struct CurrentlyPlayingBar_Previews: PreviewProvider {
    static var previews: some View {
        CurrentlyPlayingBar(imageName: "1-song", songName:"Karpur Gauram (Rock)")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
