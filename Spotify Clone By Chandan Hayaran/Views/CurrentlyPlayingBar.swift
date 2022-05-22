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
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(.bar)
                            
            HStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .foregroundColor(.white)
                    

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
                .padding(.horizontal)
                .font(.system(size: 25))
                .foregroundColor(.white)
                
           
               
                        
                }// hstack
            .padding()
                
        }
        
        .frame(height: 80)
        .cornerRadius(10)
            
            
            
    }// body

}


struct heartToggle: ToggleStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
 
        return HStack {
 
            configuration.label
 
            if configuration.isOn
            {
                Image(systemName: "heart.fill" )
                    .foregroundColor(.red)
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
            else
            {
                Image(systemName: "heart" )
                    
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
