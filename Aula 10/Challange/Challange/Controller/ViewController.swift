//
//  ViewController.swift
//  Challange
//
//  Created by Bruno Adam Alves on 21/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func addButtonAction(_ sender: UIBarButtonItem) {
        var newitemTextField: UITextField?
        
        let alertController = UIAlertController(
            title: "Add new task",
            message: nil,
            preferredStyle: .alert)
        
        alertController.addTextField {
            (txtItem) -> Void in
            newitemTextField = txtItem
            newitemTextField?.placeholder = "Enter your new task"
        }
        
        let addAction = UIAlertAction(
            title: "Add",
            style: .default,
            handler: {(alertController) -> Void in
                print("HEY HEY HEY HEY")
        })
        
        alertController.addAction(addAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
}

