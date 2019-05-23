//
//  LoaderView.swift
//  GoogleBooks
//
//  Created by Carmelo Gallo on 11/8/17.
//  Copyright © 2017 Carmelo Gallo. All rights reserved.
//

import UIKit
import Anchorage

class LoaderView: UIView {

    private let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .white)

    // MARK: - Object lifecycle
    init() {
        super.init(frame: .zero)
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Methods
    private func setupComponents() {
        // self
        backgroundColor = UIColor.black.withAlphaComponent(0.5)

        // activityIndicatorView
        activityIndicatorView.startAnimating()
        addSubview(activityIndicatorView)
    }
    
    private func setupConstraints() {
        // activityIndicatorView
        activityIndicatorView.centerXAnchor == centerXAnchor
        activityIndicatorView.centerYAnchor == centerYAnchor
    }
    
    // MARK: - Public Methods
    func showInView(view: UIView) {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        edgeAnchors == view.edgeAnchors
    }
}
