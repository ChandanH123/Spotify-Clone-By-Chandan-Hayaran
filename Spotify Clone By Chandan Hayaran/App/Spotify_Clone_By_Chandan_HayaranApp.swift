//
//  Spotify_Clone_By_Chandan_HayaranApp.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 16/03/22.
//

import SwiftUI

@main
struct Spotify_Clone_By_Chandan_HayaranApp: App {

    @ObservedObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environmentObject(viewModel)
        }
    }
}
