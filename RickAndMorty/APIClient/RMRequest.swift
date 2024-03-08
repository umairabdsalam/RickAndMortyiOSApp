//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/3/24.
//

import Foundation

/// Object that represents and single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query components for API, if any
    private let queryParameters: [URLQueryItem]
    //Constructed URL for the API Request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
            
            
        }
        return string
    }
    
    /// Computed and constructed API URL
        public var url: URL? {
            return URL(string: urlString)
        }
    
    /// Desired HTTP Method
        public let httpMethod = "GET"
        
        // MARK public
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path Components
    ///   - queryParameters: Collection of Query Parameters
        public init(
            endpoint: RMEndpoint,
            pathComponents: Set<String> = [],
            queryParameters: [URLQueryItem] = []
        ) {
            self.endpoint = endpoint
            self.pathComponents = pathComponents
            self.queryParameters = queryParameters
        }
    }
