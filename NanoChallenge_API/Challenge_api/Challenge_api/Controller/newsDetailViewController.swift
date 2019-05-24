//
//  newsDetailViewController.swift
//  Challenge_api
//
//  Created by Bruno Adam Alves on 24/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class newsDetailViewController: UIViewController {
    var article: Articles?

    var teste: Articles?
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = self.article?.title
        // Do any additional setup after loading the view.
    }
}
