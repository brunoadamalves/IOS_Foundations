//
//  ViewController.swift
//  MultiPageApp
//
//  Created by Bruno Adam Alves on 14/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googlePlusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailButton.layer.cornerRadius = 25
        facebookButton.layer.cornerRadius = 25
        googlePlusButton.layer.cornerRadius = 25
    }
}

