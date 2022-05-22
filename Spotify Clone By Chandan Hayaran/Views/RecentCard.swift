//
//  RecentCard.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct RecentCard: View {
    
    var imageName: String
    var songName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundColor(.white)
    
            Text(songName)
                .font(.custom("Gotham-Black", size: 14))
                .foregroundColor(.white)
                .frame(width: 80)
            Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 8)
            .opacity(0.2))
            .padding(.horizontal, 10)
            .multilineTextAlignment(.leading)
            
            
            
            
            
    }// body
}// struct

struct RecentCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentCard(imageName: "1-song", songName:"When We Feel Young")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
