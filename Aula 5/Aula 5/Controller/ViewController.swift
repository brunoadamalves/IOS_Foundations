//
//  ViewController.swift
//  Aula 5
//
//  Created by Bruno Adam Alves on 10/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var toInput: UITextField!
    @IBOutlet weak var subjectInput: UITextField!
    @IBOutlet weak var phoneInput: UITextField!
    @IBOutlet weak var messageInput: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.layer.cornerRadius = 5
        
        //TextView placeholder
        messageInput.text = "Email body...";
        messageInput.textColor = UIColor.lightGray;
        messageInput.font = UIFont(name: "verdana", size: 13);
        messageInput.returnKeyType = .done;
        
        messageInput.delegate = self
//        phoneInput.delegate = self
    }

    @IBAction func sendButtonAction(_ sender: UIButton) {
        //set model class
        let mail = Mail(to: toInput.text ?? "", subject: subjectInput.text ?? "", phone: phoneInput.text ?? "", message: messageInput.text)
        
        //Clear inputs
        clearInputs()
        
        //UIAlertAction
        alertMail(mail: mail)
    }
    
    func clearInputs() -> Void {
        self.toInput.text = ""
        self.subjectInput.text = ""
        self.phoneInput.text = ""
        self.messageInput.text = ""
    }
    
    func alertMail(mail: Mail) -> Void {
        
        let message = """
                        To: \(mail.to)
                        Subject: \(mail.subject)
                        Phone: \(mail.phone)
                        Message: \(mail.message)
                      """
        
        
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = "";
            textView.textColor = UIColor.black;
            textView.font = UIFont(name: "Verdana", size: 14)
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if (textView.text.isEmpty)
        {
            textView.text = "Email body..."
            textView.textColor = UIColor.lightGray
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder();
        }
        return true;
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
}

