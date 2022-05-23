//
//  ViewModel.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 22/05/22.
//

import Foundation
import AVFoundation

class ViewModel: ObservableObject {
    
    // MARK: - TAB BAR
    @Published var currentTab: Tab = .Home
    
    @Published var items = [DataModel]()
    
    let prefixUrl = "http://localhost:8080"
    
    init() {
        getAllTracks()
    }
    
    
    //MARK: - get all tracks
    func getAllTracks() {
        
        self.items = load("playlist_data.json")
        print(self.items)
        
    }
        
    
}

// MARK: - TAB ITEM CASE
enum Tab: String {
    case Home = "house.fill"
    case Search = "magnifyingglass"
    case Library = "books.vertical"
    case Profile = "person.crop.circle"
}




func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}



class SoundManager : ObservableObject {
    var audioPlayer: AVPlayer?

    func playSound(sound: String){
        if let url = URL(string: sound) {
            self.audioPlayer = AVPlayer(url: url)
        }
    }
}
