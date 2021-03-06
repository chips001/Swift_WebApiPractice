//
//  Repository.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/08.
//  Copyright © 2019 一木 英希. All rights reserved.
//

struct Repository: Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
