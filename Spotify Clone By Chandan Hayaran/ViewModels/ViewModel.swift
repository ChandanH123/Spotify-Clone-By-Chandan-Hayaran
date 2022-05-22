//
//  ViewModel.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 22/05/22.
//

import Foundation

class ViewModel: ObservableObject {
    // MARK: - TAB BAR
    @Published var currentTab: Tab = .Home
    
}

// MARK: - TAB ITEM CASE
enum Tab: String {
    case Home = "house.fill"
    case Search = "magnifyingglass"
    case Library = "books.vertical"
    case Profile = "person.crop.circle"
}


