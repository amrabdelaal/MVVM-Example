//
//  Repo.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.

import Foundation

struct ReposItems: Codable {
    let items: [Repo]
}

struct Repo: Codable {
    let id: Int
    let node_id: String
    let name: String
    let full_name: String
    let html_url: String
    let fork: Bool
    let updated_at: String
}
