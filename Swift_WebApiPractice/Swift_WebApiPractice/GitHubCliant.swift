//
//  GitHubCliant.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/18.
//  Copyright © 2019 一木 英希. All rights reserved.
//

import Foundation

class GitHubCliant {

    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    func send<T: GitHubRequest>(request: T, complation: @escaping (Result<T.Response, GitHubClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        let task = session.dataTask(with: urlRequest) { data, response, error in
            switch (data, response, error) {
            case (_, _, let error?):
                complation(Result(error: .connectionError(error)))
            case (let data?, let response?, _):
                do {
                    let response = try request.response(from: data, urlResponse: response)
                    complation(Result(value: response))
                } catch let error as GitHubAPIError {
                    complation(Result(error: .apiError(error)))
                } catch {
                    complation(Result(error: .responseParseError(error)))
                }
            default:
                fatalError("invalid response combination \(String(describing: data)), \(String(describing: response)), \(String(describing: error))")
            }
        }
        task.resume()
    }
}
