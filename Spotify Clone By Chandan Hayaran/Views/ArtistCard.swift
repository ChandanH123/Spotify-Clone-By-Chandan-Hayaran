//
//  ArtistCard.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct ArtistCard: View {
    var artistImageName: String
    var artistName: String
    
    
    var body: some View {
        VStack
        {
            Image(artistImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 160, alignment: .topLeading)
                .clipShape(Circle())
                .foregroundColor(.white)
    
            Text(artistName)
                .font(.custom("Gotham-Black", size: 14))
                .foregroundColor(.white)
            }
            
            
            
    }
}

struct ArtistCard_Previews: PreviewProvider {
    static var previews: some View {
        ArtistCard(artistImageName: "6-artist", artistName: "When Chai Met Toast")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
