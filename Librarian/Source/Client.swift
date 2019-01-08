//
//  Client.swift
//  Librarian
//
//  Created by Pawel Szymanski on 08/01/2019.
//  Copyright © 2019 Pawel Szymanski. All rights reserved.
//

import Foundation

public class Client {
    enum ClientError: Error {
        case iDontHaveThatBook
    }
    
    private var books: [Book] = []
    
    public func take(book: Book) {
        books.append(book)
    }
    
    public func giveBack(book: Book) throws {
        guard let index = books.firstIndex(of: book) else {
            throw ClientError.iDontHaveThatBook
        }
        books.remove(at: index)
    }
}
