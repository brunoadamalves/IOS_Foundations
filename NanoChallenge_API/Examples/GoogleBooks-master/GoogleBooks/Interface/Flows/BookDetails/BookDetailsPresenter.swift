//
//  BookDetailsPresenter.swift
//  GoogleBooks
//
//  Created by Carmelo Gallo on 9/19/17.
//  Copyright (c) 2017 Carmelo Gallo. All rights reserved.
//

import UIKit

protocol BookDetailsPresentationLogic {
    func presentSomething(response: BookDetails.Something.Response)
}

class BookDetailsPresenter: BookDetailsPresentationLogic {
    
    weak var viewController: BookDetailsDisplayLogic?
    
    // MARK: - Presentation logic
    func presentSomething(response: BookDetails.Something.Response) {
        let viewModel = BookDetails.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
