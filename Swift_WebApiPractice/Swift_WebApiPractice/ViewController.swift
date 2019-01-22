//
//  ViewController.swift
//  Swift_WebApiPractice
//
//  Created by 一木 英希 on 2019/01/04.
//  Copyright © 2019 一木 英希. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    private let keyword: String = "swift"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fetchRepositories()
    }

    private func fetchRepositories() {
        let cliant = GitHubCliant()
        let request = GitHubAPI.SearchRepositories(keyword: self.keyword)
        
        cliant.send(request: request) { result in
            switch result {
            case let .success(response):
                response.items.forEach { item in
                    print(item.owner.login + "/" + item.name)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}

