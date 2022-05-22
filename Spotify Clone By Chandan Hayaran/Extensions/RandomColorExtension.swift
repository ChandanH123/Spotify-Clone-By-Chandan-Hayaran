//
//  RandomColorExtension.swift
//  Spotify Clone By Chandan Hayaran
//
//  Created by Chandan on 23/03/22.
//

import Foundation
import SwiftUI

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}
