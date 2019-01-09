//
//  GitHubRequest.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/10.
//  Copyright © 2019 一木 英希. All rights reserved.
//
import Foundation

protocol GitHubRequest {
    associatedtype Response: Decodable
    
    var method: HTTPMethod { get }
    var baseURL: URL { get }
    var path: String { get }
    var queryItnms: [URLQueryItem] { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
