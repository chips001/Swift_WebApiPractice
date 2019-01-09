//
//  GitHubAPI.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/10.
//  Copyright © 2019 一木 英希. All rights reserved.
//
import UIKit

final class GitHubAPI {
    
    struct SearchRepositories: GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<Repository>
        var method    : HTTPMethod { return .get }
        var path      : String { return "/search/repositories" }
        var queryItnms: [URLQueryItem] { return [URLQueryItem(name: "q", value: keyword)] }
    }
    
    struct SearchUsers: GitHubRequest {
        let keyword: String

        typealias Response = SearchResponse<User>
        var method    : HTTPMethod { return .get }
        var path      : String { return "/search/users" }
        var queryItnms: [URLQueryItem] { return [URLQueryItem(name: "q", value: keyword)] }
    }
}
