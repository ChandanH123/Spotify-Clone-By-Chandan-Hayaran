//
//  ContentView.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

struct ContentView: View {

    let songNameArray:[String] = ["Karpur Gauram", "One More Light", "My Universe", "Every Second", "Alag Aasmaan", "When We Feel Young"]
    
    var body: some View {
        
        ZStack {
            TabView {
                HomeView()
                  .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                  }
                SearchView()
                  .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                  }
                HomeView()
                  .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Your Library")
                  }
                HomeView()
                  .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                      
                  }
            }
            
            CurrentlyPlayingBar(imageName: "1-song", songName:songNameArray[0])
                .offset(y: 280)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
