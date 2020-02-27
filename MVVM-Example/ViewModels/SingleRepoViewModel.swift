//
//  SingleRepoViewModel.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import Foundation

class SingleRepoViewModel {
    var fullName: String
    var updatedAt: String
    
    init(with repo: Repo) {
        self.fullName = repo.full_name
        self.updatedAt = repo.updated_at
    }
}
