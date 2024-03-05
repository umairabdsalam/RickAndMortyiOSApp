//
//  RMService.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/3/24.
//

import Foundation

/// Primary API Service object to get Rick and Morty data
final class RMService {
    /// shared singleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init() {}
    
    /// send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
