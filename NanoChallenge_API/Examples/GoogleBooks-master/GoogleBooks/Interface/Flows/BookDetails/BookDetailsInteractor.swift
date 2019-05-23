//
//  BookDetailsInteractor.swift
//  GoogleBooks
//
//  Created by Carmelo Gallo on 9/19/17.
//  Copyright (c) 2017 Carmelo Gallo. All rights reserved.
//

import UIKit

protocol BookDetailsBusinessLogic {
    func doSomething(request: BookDetails.Something.Request)
}

protocol BookDetailsDataStore {
    var bookModel: BookModel! { get set }
}

class BookDetailsInteractor: BookDetailsBusinessLogic, BookDetailsDataStore {
    
    var presenter: BookDetailsPresentationLogic?
    var worker: BookDetailsWorker?
    var bookModel: BookModel!

    // MARK: - Business logic
    func doSomething(request: BookDetails.Something.Request) {
        worker = BookDetailsWorker()
        worker?.doSomeWork()
        
        let response = BookDetails.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
