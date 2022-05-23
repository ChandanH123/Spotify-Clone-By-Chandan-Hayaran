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
struct DataModel: Codable {
    let type: String
    let playlist: Playlist
}

// MARK: - Playlist
struct Playlist: Codable {
    let uri: String
    let playlistDescription: String
    let name: String
    let followers: Int
    let owner: Owner
    let tracks: [Track]

    enum CodingKeys: String, CodingKey {
        case uri
        case playlistDescription = "description"
        case name, followers, owner, tracks
    }
}

// MARK: - Owner
struct Owner: Codable {
    let name: String
    let uri: String
}

// MARK: - Track
struct Track: Codable {
    let name: String
    let uri: String
    let artists: [Artist]
}

// MARK: - Artist
struct Artist: Codable {
    let id: String
    let name: String
    let uri: String
}
