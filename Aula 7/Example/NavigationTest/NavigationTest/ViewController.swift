//
//  ViewController.swift
//  NavigationTest
//
//  Created by Renan Trévia on 14/05/19.
//  Copyright © 2019 Renan Trévia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendColorAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "nextScreen", sender: sender.backgroundColor)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextScreenVC = segue.destination as? LightRedViewController, let color = sender as? UIColor {
            nextScreenVC.backgroundColor = color
        }
    }
    


}

