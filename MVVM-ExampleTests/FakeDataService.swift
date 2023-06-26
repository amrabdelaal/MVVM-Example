//
//  FakeDataService.swift
//  MVVM-ExampleTests
//
//  Created by Amr Abdelaal on 27.02.20.


import Foundation

@testable import MVVM_Example

class FakeDataService: DataService {
    
    override func getRepos(by language: String, success: @escaping ([Repo]?) -> (), failure: @escaping (Error?) -> ()) {
        if let path = Bundle(for: type(of: self)).path(forResource: "ReposMock", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let repos = try JSONDecoder().decode(ReposItems.self, from: data).items
                success(repos)
            } catch {
                failure(Utilities.GenericError.wrongJsonFormat)
            }
        } else {
            failure(Utilities.GenericError.connectionFaild)
        }
    }
}
