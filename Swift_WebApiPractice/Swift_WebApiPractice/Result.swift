//
//  Result.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/18.
//  Copyright © 2019 一木 英希. All rights reserved.
//

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
