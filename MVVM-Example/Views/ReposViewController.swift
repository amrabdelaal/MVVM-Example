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
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel = ReposViewModel(dataService: DataService())
        self.viewModel?.getRepos(by: "swift") // TODO: Make Language Searchable
    }

}

// MARK: - UITableview Datasource and Delegates
extension ReposViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: RepoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "RepoTableViewCell", for: indexPath) as! RepoTableViewCell {
            
        }
        return UITableViewCell()
    }
    
}

extension ReposViewController: UITableViewDelegate {
    
}
