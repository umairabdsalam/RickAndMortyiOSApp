//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/7/24.
//

import Foundation

enum RMCharacterGender: String, Codable {
    //('Female', 'Male', 'Genderless' or 'unknown').
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
