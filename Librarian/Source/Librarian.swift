//
//  Librarian.swift
//  Librarian
//
//  Created by Pawel Szymanski on 08/01/2019.
//  Copyright © 2019 Pawel Szymanski. All rights reserved.
//

import Foundation

public class Librarian {
    private let library: Library
    
    public init(library: Library) {
        self.library = library
    }
    
    public func giveAnyBook(to client: Client) {
        guard let book = library.anyBook() else {
            return
        }
        client.take(book: book)
    }
    
    private func sleep() {
        print("Sleeping ... that's why it's private.")
    }
}
