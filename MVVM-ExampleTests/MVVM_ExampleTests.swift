//
//  MVVM_ExampleTests.swift
//  MVVM-ExampleTests
//
//  Created by Amr Abdelaal on 25.02.20.


import XCTest
@testable import MVVM_Example

class MVVM_ExampleTests: XCTestCase {

    let viewModel: ReposViewModel = ReposViewModel(dataService: FakeDataService())
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.viewModel.getRepos(by: "swift")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_countOfRepos() {
        XCTAssertEqual(self.viewModel.repos.value.count, 30)
    }
    
    func test_wrongCountOfRepos() {
        XCTAssertNotEqual(self.viewModel.repos.value.count, 2)
    }
    
    func test_firstRepoFullName() {
        XCTAssertEqual(self.viewModel.repos.value.first?.fullName, "vsouza/awesome-ios")
    }

}
