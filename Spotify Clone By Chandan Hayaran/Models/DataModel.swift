//
//  DataModel.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 23/05/22.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)


// MARK: - Welcome
struct DataModel: Codable, Identifiable {
    let id = UUID()
    let type: String
    let playlist: Playlist
}

// MARK: - Playlist
struct Playlist: Codable, Identifiable {
    let id = UUID()
    let uri: String
    let description: String
    let name: String
    let followers: Int
    let owner: Owner
    let tracks: [Track]


}

// MARK: - Owner
struct Owner: Codable, Identifiable {
    let id = UUID()
    let name: String
    let uri: String
}

// MARK: - Track
struct Track: Codable, Identifiable {
    let id = UUID()
    let name: String
    let uri: String
    let artists: Artist
    let coverArt: String
}

// MARK: - Artist
struct Artist: Codable {
    let id: String
    let name: String
    let uri: String
    let artistImage: String
}
