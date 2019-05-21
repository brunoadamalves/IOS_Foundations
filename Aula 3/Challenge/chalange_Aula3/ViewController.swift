//
//  ViewController.swift
//  chalange_Aula3
//
//  Created by Bruno Adam Alves on 08/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate{

    @IBOutlet weak var boldButton: UIButton!
    @IBOutlet weak var italicButton: UIButton!
    @IBOutlet weak var underlineButton: UIButton!
    @IBOutlet weak var emailBodyTextView: UITextView!
    @IBOutlet weak var phoneTextInput: UITextField!
    @IBOutlet weak var emailTextInput: UITextField!
    @IBAction func boldButtonAction(_ sender: UIButton) {
    }
    @IBAction func italicButtonAction(_ sender: UIButton) {
    }
    @IBAction func underlineButtonAction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button corner radius
        boldButton.layer.cornerRadius = 5;
        italicButton.layer.cornerRadius = 5;
        underlineButton.layer.cornerRadius = 5;
        
        //TextView placeholder
        emailBodyTextView.text = "Email body...";
        emailBodyTextView.textColor = UIColor.lightGray;
        emailBodyTextView.font = UIFont(name: "verdana", size: 13);
        emailBodyTextView.returnKeyType = .done;
        emailBodyTextView.delegate = self;
        
        //TextField
        phoneTextInput.delegate = self;
        emailTextInput.delegate = self;
    }
    
    //Delegate function phone number
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)

        if textField == phoneTextInput && allowedCharacters.isSuperset(of: characterSet){
            
            //New String and components
            let newStr = (textField.text! as NSString).replacingCharacters(in: range, with: string)
            let components = (newStr as NSString).components(separatedBy: NSCharacterSet.decimalDigits.inverted)
            
            //Decimal string, length and leading
            let decimalString = components.joined(separator: "") as NSString
            let length = decimalString.length
            let hasLeadingOne = length > 0 && decimalString.character(at: 0) == (1 as unichar)
            
            //Checking the length
            if length == 0 || (length > 11 && !hasLeadingOne) || length > 13 {
                let newLength = (textField.text! as NSString).length + (string as NSString).length - range.length as Int
                
                return (newLength > 11) ? false : true
            }
            
            //Index and formatted string
            var index = 0 as Int
            let formattedString = NSMutableString()
            
            //Check if it has leading
            if hasLeadingOne {
                formattedString.append("1 ")
                index += 1
            }
            
            //Area Code
            if (length - index) > 2 {
                let areaCode = decimalString.substring(with: NSMakeRange(index, 2))
                formattedString.appendFormat("%@ ", areaCode)
                index += 2
            }
            
            
            if length - index > 5 {
                let prefix = decimalString.substring(with: NSMakeRange(index, 5))
                formattedString.appendFormat("%@-", prefix)
                index += 5
            }
            
            let remainder = decimalString.substring(from: index)
            formattedString.append(remainder)
            textField.text = formattedString as String
            return false
            
        }
        
        return false
    }
    
    func isEmailValid(_ value: String) -> Bool {
        do {
            if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                return false
            }
        } catch {
            return false
        }
        return true
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

