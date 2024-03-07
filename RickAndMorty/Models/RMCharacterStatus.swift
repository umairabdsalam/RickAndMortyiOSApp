//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/7/24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // Alive, Dead or Unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
