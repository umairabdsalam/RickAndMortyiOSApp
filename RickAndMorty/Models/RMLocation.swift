//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/3/24.
//

import Foundation

struct RMLocation: Codable {
          let id: Int
          let name: String
          let type: String
          let dimension: String
          let residents: [String]
          let url: String
          let created: String
        }
    


//{
//      "id: 1,
//      "name: "Earth",
//      "type: "Planet",
//      "dimension: "Dimension C-137",
//      "residents: [
//        "https://rickandmortyapi.com/api/character/1",
//        "https://rickandmortyapi.com/api/character/2",
//        // ...
//      ],
//      "url: "https://rickandmortyapi.com/api/location/1",
//      "created: "2017-11-10T12:42:04.162Z"
//    }
