//
//  Utilities.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.
//  Copyright © 2020 Amr Abdelaal. All rights reserved.
//

import Foundation

struct Utilities {
    
    // MARK: - Api parts
    enum UrlParts: String {
        case baseUrl = "https://api.github.com/search/repositories?"
        case query = "q="
        case language = "language:"
    }
    
    // MARK: - Generic Error Handling
    enum GenericError: Error {
        case wrongJsonFormat
        case connectionFaild
    }
    
}
