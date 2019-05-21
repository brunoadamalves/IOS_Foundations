//
//  ViewController.swift
//  Challange
//
//  Created by Bruno Adam Alves on 21/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var tasks: [NSManagedObject] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        fetchTaskItems()
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
        title: "Add", style: .default) {
            (action) -> Void in
            
            //save
            if (newitemTextField != nil){
                self.save(title: newitemTextField?.text ?? "", done: false)
            }
            else{
                return
            }
        }
        
        alertController.addAction(addAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    func fetchTaskItems() {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        if let context = appDelegate?.persistentContainer.viewContext {
            let request:NSFetchRequest = TaskItem.fetchRequest()
            
            do{
                tasks = try context.fetch(request)
            }catch let error {
                print("Ocorreu um erro \(error)")
            }
        }
    }
    
    func save(title: String, done: Bool)
    {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "TaskItem", in: context)
        let newTaskItem = NSManagedObject(entity: entity!, insertInto: context)
        
        newTaskItem.setValue(title, forKey: "title")
        newTaskItem.setValue(done, forKey: "done")
        
        tasks.append(newTaskItem)
        
        do {
            try context.save()
        }catch let error {
            print("Ocorreu um erro \(error)")
        }
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskItem = tasks[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        
        cell.textLabel?.text = taskItem.value(forKeyPath: "title") as? String
        return cell
    }
}
