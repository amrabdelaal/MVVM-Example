//
//  ReposViewModel.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.

import Foundation

class ReposViewModel {
    
    // MARK: - Private Variables
    private var dataService: DataService?
    
    // MARK: - Variables
    var repos: Dynamic<[SingleRepoViewModel]>
    
    // MARK: - Intialization
    init(dataService: DataService) {
        self.dataService = dataService
        self.repos = Dynamic([SingleRepoViewModel]())
    }
    
    // MARK: - Methods
    func getRepos(by language: String) {
        self.dataService?.getRepos(by: language, success: { [weak self] (reposResult) in
            if let reposResult = reposResult {
                    self?.repos.value = reposResult.map {SingleRepoViewModel(with: $0)}
            }
        }, failure: { (error) in
          // TODO: UI Handeling error
        })
    }
}
