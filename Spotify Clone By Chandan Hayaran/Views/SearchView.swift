//
//  SearchView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 17/03/22.
//

import SwiftUI

/* For testing of LazyVGrid
 
struct testing: View {
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    } 
    init(id: Int) {
        print("Loading \(id)")
        self.id = id
    }
    
   
}
*/


struct SearchView: View {
    
    @State var searchInput: String
    
    let topGenresArray:[String] = ["Pop", "Bollywood", "Rock", "Indie"]
    
    let browseAllArray:[String] = ["Podcasts", "New Releases", "Charts", "Concerts", "Made for You", "At Home", "Only You", "COVID-19 Guide", "Punjabi", "Tamil", "EQUAL", "Telugu", "RADAR", "Fresh Finds", "Marathi", "Devotional", "Indian Classical", "Romance", "Wellness", "Happy Holidays", "Decades", "K-Pop", "Netflix", "Hip-Hop", "Party", "Instrimen-tal", "Dance/Electronic", "Chill", "Mood", "Higher Ground", "Workout", "Folk & Acoustic", "Sleep", "Kids & Family", "R&B", "Tastemak-ers", "Focus", "Summer", "Cooking & Dining", "Jazz", "Stop Asian Hate", "Gaming", "Caribbean", "Soul", "Classical", "Latin", "Metal", "Blues", "Funk", "Punk", "Travel", "Country", "Anime", "Songwriters", "TV & Movies", "Ambient", "Music + Talk"]
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    let songNameArray:[String] = ["Karpur Gauram", "One More Light", "My Universe", "Every Second", "Alag Aasmaan", "When We Feel Young"]
    
    let artistNameArray:[String] = ["Nandish The Band", "Linkin Park", "Coldplay", "Mina Okabe", "Anuv Jain", "When Chai Met Toast"]
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Search")
                            .font(Font.custom("Gotham-Black", size: 40))
                    Spacer()
                    }.padding()
                    
                    
                    TextField("", text: $searchInput)
                        .placeholder(when: searchInput.isEmpty) {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.black)
                                    .font(Font.system(size: 35))
                                Text("Artists, songs, or podcasts")
                                    .foregroundColor(.black)
                                    .opacity(0.7)
                                    .font(Font.custom("Gotham-Bold", size: 20))
                                Spacer()
                            }
                            .padding(14)
                            .background(RoundedRectangle(cornerRadius: 12))
                        }
                        .padding(.horizontal)
                }
                VStack(spacing: 15) {
                    HStack {
                    Text("Your top genres")
                        .font(Font.custom("Gotham-Black", size: 23))
                    Spacer()
                    }.padding()
                
                
                    LazyVGrid(columns: columns) {
                        ForEach((1...topGenresArray.count), id: \.self) { index in
                            TopGenresView(genreName: (topGenresArray[index-1]))
                                
                            }
                        }
                    .padding(.horizontal)
                            
                    HStack {
                        Text("Browse All")
                            .font(Font.custom("Gotham-Black", size: 23))
                        Spacer()
                    }.padding()
                
                
                    LazyVGrid(columns: columns) {
                        ForEach((1...browseAllArray.count), id: \.self) { index in
                            TopGenresView(genreName: (browseAllArray[index-1]))
                                
                            }
                        }
                    .padding(.horizontal)
                    
                    
                            
                
                Spacer()
            }
                
                
                
                }
        
            
        }

    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchInput: "")
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
    }
}
