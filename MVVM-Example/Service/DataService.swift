//
//  DataService.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import Foundation

class DataService {
    
    // MARK:- GET Methods
    func getRepos(by language: String, success: @escaping ([Repo]?) -> (), failure: @escaping (Error?) -> ()) {
        let completeUrl = "\(Utilities.UrlParts.baseUrl.rawValue)\(Utilities.UrlParts.query.rawValue)\(Utilities.UrlParts.language.rawValue)\(language)"
        if let url = URL(string: completeUrl) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    failure(error)
                }
                
                if let data = data {
                    do {
                        let repos = try JSONDecoder().decode(ReposItems.self, from: data).items
                        success(repos)
                    } catch {
                        failure(Utilities.GenericError.wrongJsonFormat)
                    }
                }
            }.resume()
        } else {
            failure(Utilities.GenericError.connectionFaild)
        }
    }
}
