//
//  ReposViewModel.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import Foundation

class ReposViewModel {
    
    // MARK: - Private Variables
    private var dataService: DataService?
    
    // MARK: - Variables
    var repos = [Repo]()
    
    // MARK: - Intialization
    init(dataService: DataService) {
        self.dataService = dataService
    }
    
    // MARK: - Methods
    func getRepos(by language: String) {
        self.dataService?.getRepos(by: language, success: { (reposResult) in
            if let reposResult = reposResult {
                self.repos = reposResult
            }
        }, failure: { (error) in
          // TODO: UI Handeling error
        })
    }
}
