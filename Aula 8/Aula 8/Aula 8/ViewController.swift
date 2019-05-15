//
//  ViewController.swift
//  Aula 8
//
//  Created by Bruno Adam Alves on 15/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

struct Person {
    var name: String
    var age: Int
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tablewView: UITableView!
    
    var people: [Person] =
    [
        Person(name: "Teste", age: 20),
        Person(name: "Teste 2", age: 21),
        Person(name: "Teste 3", age: 25)
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell else { fatalError()}
        
        let person = people[indexPath.row]
        
        cell.nameLabel.text = person.name
        cell.ageLabel.text = String(person.age)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablewView.dataSource = self
        tablewView.delegate = self
    }


}

