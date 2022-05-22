//
//  TopGenresView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 23/03/22.
//

import SwiftUI

struct TopGenresView: View {
    
    var genreName: String
    
    var body: some View {
        HStack {
            
            VStack {
                Text(genreName)
                    .font(.custom("Gotham-Black", size: 21))
                    .foregroundColor(.white)
                .padding()
                Spacer()
            }
            
            Spacer()
                    
            }// hstack
            .background(Rectangle().opacity(0).frame(height: 150).background(Color.random))
            .frame(height: 130)
            .cornerRadius(8)
            .padding(5)
            
            
            
            
    }// body
}// struct


struct TopGenresView_Previews: PreviewProvider {
    static var previews: some View {
        TopGenresView(genreName: "Bollywood")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
