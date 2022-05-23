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
            AsyncImage(url: URL(string: artistImageName)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .aspectRatio(contentMode: .fill)
            .frame(width: 160, height: 160)
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
        ArtistCard(artistImageName: "https://i.scdn.co/image/ab6761610000e5eb4118bddad7294394338dd36d", artistName: "Nandish The Band")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
