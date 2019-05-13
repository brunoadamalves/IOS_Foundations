//
//  Person.swift
//  Aula 5
//
//  Created by Bruno Adam Alves on 10/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import Foundation

class Mail {
    var to: String
    var subject: String
    var phone: String
    var message: String
    
    init(to: String, subject: String, phone: String, message: String) {
        self.to = to
        self.subject = subject
        self.phone = phone
        self.message = message
    }
    
    func printMail() {
        print("to: \(self.to), subject: \(self.subject), phone: \(self.phone), message: \(self.message)")
    }
}
