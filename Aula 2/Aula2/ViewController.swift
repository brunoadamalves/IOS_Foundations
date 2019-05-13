//
//  ViewController.swift
//  Aula2
//
//  Created by Bruno Adam Alves on 07/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var changeBuntton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var currentView: UIView!
    
    var realidade = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    @IBAction func changeRealityAction(_ sender: UIButton) {
        if (realidade == 0)
        {
            realidade = 1;
            titleLabel.text = "EXPECTATIVA";
            imageView.image = UIImage(named: "pikachu");
            changeBuntton.setTitle("VER REALIDADE", for: .normal);
            self.view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 0.5921568627, alpha: 1)
            changeBuntton.tintColor = #colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 0.5921568627, alpha: 1)
        }
        else
        {
            realidade = 0;
            titleLabel.text = "REALIDADE";
            imageView.image = UIImage(named: "uglyPikachu");
            changeBuntton.setTitle("VER EXPECTATIVA", for: .normal);
            self.view.backgroundColor = #colorLiteral(red: 0.425968536, green: 0.5699914384, blue: 1, alpha: 1)
            changeBuntton.tintColor = #colorLiteral(red: 0.425968536, green: 0.7731699487, blue: 1, alpha: 1)
        }
    }
}
