//
//  Dynamic.swift
//  MVVM-Example
//
//  Created by Amr Abdelaal on 27.02.20.

import Foundation

struct Dynamic<T> {
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    mutating func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    mutating func bindAndFire(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}
