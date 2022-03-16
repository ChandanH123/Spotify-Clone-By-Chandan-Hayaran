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
                Image(systemName: "heart")
                Image(systemName: "play.fill")
            }
            .font(.system(size: 25))
            .foregroundColor(.white)
       
            Spacer()
                    
            }// hstack
            .background(RoundedRectangle(cornerRadius: 8)
            .opacity(0.2))
            .frame(height: 70)
            
            .preferredColorScheme(.dark)
            
    }// body
}

struct CurrentlyPlayingBar_Previews: PreviewProvider {
    static var previews: some View {
        CurrentlyPlayingBar(imageName: "1-song", songName:"Karpur Gauram (Rock)")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
