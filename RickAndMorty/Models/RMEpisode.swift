//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/3/24.
//

import Foundation

struct RMEpisode: Codable {
    
        let id: Int
        let name: String
        let type: String
        let dimension: String
        let residents: [String]
        let url: String
        let created: String
    }

