//
//  SingleRepoViewModel.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.


import Foundation

class SingleRepoViewModel {
    var fullName: String
    var updatedAt: String
    
    init(with repo: Repo) {
        self.fullName = repo.full_name
        self.updatedAt = Utilities().formateDate(input: repo.updated_at)
    }
}
