//
//  Book.swift
//  Librarian
//
//  Created by Pawel Szymanski on 08/01/2019.
//  Copyright © 2019 Pawel Szymanski. All rights reserved.
//

import Foundation

public struct Book: Equatable {
    private let title: String
    private let pageCount = 1
    private let category = Category.crime
    
    public func open() {
        print("Opened")
    }
}
