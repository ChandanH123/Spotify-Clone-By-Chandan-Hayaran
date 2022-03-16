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
                .frame(width: 70, height: 70, alignment: .topLeading)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundColor(.white)
    
            Text(songName)
                .font(.custom("Gotham-Black", size: 14))
                .foregroundColor(.white)
                .frame(width: 80)
       
            Spacer()
                    
            }// hstack
            .background(RoundedRectangle(cornerRadius: 8)
            .opacity(0.2))
            .frame(width:150, height: 70)
            .preferredColorScheme(.dark)
            
    }// body
}// struct

struct RecentCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentCard(imageName: "1-song", songName:"Karpur Gauram")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
