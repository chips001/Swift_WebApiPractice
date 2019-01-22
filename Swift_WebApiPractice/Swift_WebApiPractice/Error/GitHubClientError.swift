//
//  GitHubCliantError.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/08.
//  Copyright © 2019 一木 英希. All rights reserved.
//

enum GitHubClientError: Error {
    //通信失敗
    case connectionError(Error)
    //レスポンスの解釈失敗
    case responseParseError(Error)
    //APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
