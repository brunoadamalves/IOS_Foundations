//
//  ViewController.swift
//  Aula 3
//
//  Created by Bruno Adam Alves on 08/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate{

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        textView.delegate = self;
        textfield.delegate = self;
        textView.allowsEditingTextAttributes = true;
    }
    
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(textfield.placeholder)
    }
    
}

