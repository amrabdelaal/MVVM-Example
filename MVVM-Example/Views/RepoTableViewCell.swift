//
//  RepoTableViewCell.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    // MARK:- IBOutlets
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var lastUpdate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
