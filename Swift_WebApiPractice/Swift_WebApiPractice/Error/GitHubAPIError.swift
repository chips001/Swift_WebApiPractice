//
//  GitHubAPIError.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/08.
//  Copyright © 2019 一木 英希. All rights reserved.
//

struct GitHubAPIError: Decodable, Error {
    let message: String
    let errors: [FieleError]
    
    struct FieleError: Decodable {
        let resource: String
        let field: String
        let code: String
    }
}
