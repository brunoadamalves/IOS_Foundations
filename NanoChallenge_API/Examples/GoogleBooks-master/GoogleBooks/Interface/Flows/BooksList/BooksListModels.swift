//
//  BooksListModels.swift
//  GoogleBooks
//
//  Created by Carmelo Gallo on 9/18/17.
//  Copyright (c) 2017 Carmelo Gallo. All rights reserved.
//

import UIKit

enum BooksList {
    // MARK: - Use cases
    enum GetBooks {
        struct Request { }
        struct Response {
            var result: Result<[BookModel]>
        }
        struct ViewModel {
            var result: Result<BookSectionModel>
        }
    }
    enum BookDetails {
        struct Request {
            var bookModel: BookModel
        }
        struct Response { }
        struct ViewModel { }
    }
}
