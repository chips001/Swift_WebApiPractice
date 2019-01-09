//
//  SearchResponse.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/08.
//  Copyright © 2019 一木 英希. All rights reserved.
//

struct SearchResponse<item: Decodable>: Decodable {
    let totalCount: Int
    let items: [item]
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
