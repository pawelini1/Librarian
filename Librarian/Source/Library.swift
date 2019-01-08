//
//  Library.swift
//  Librarian
//
//  Created by Pawel Szymanski on 08/01/2019.
//  Copyright © 2019 Pawel Szymanski. All rights reserved.
//

import Foundation

public struct Library {
    private let books: [Book]
    
    public  init(books: [Book]) {
        self.books = books
    }
    
    public func anyBook() -> Book? {
        guard books.count > 0 else {
            return nil
        }
        return books[Int(arc4random_uniform(UInt32(books.count)))]
    }
}
