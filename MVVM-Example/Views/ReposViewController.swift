//
//  ReposViewController.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 25.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import UIKit

class ReposViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    var viewModel: ReposViewModel?
    var repos: [SingleRepoViewModel] = [] {
        didSet{
            self.updateUI()
        }
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModelBinding()
    }
    
    // MARK: - Private Methods
    private func viewModelBinding() {
        self.viewModel = ReposViewModel(dataService: DataService())
        self.viewModel?.getRepos(by: "swift") // TODO: Make Language Searchable
        self.viewModel?.repos.bindAndFire { [weak self] in self?.repos = $0 }
    }
    
    private func updateUI() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

}

// MARK: - UITableview Datasource and Delegates
extension ReposViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: RepoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "RepoTableViewCell", for: indexPath) as? RepoTableViewCell {
            let repo: SingleRepoViewModel = self.repos[indexPath.row]
            cell.repoName.text = repo.fullName
            cell.lastUpdate.text = repo.updatedAt
            return cell
        }
        return UITableViewCell()
    }
    
}

extension ReposViewController: UITableViewDelegate {
    
}
