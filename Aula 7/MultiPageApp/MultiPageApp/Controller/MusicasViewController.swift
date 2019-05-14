//
//  MusicasViewController.swift
//  MultiPageApp
//
//  Created by Bruno Adam Alves on 14/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class MusicasViewController: UIViewController {
    
    @IBOutlet weak var addMusicEstiloButton: UIButton!
    @IBOutlet weak var addFunkEstiloButton: UIButton!
    @IBOutlet weak var addIndieButton: UIButton!
    @IBOutlet weak var add80Button: UIButton!
    @IBOutlet weak var addRockButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addMusicEstiloButton.layer.cornerRadius = 25
        addFunkEstiloButton.layer.cornerRadius = 25
        addIndieButton.layer.cornerRadius = 25
        add80Button.layer.cornerRadius = 25
        addRockButton.layer.cornerRadius = 25
    }
}
