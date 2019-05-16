//
//  ViewController.swift
//  NanoChallange
//
//  Created by Bruno Adam Alves on 16/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

    @IBOutlet weak var scheduleTableView: UITableView!
    
    var tempItems: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempItems = createTempArrayData()
        
        scheduleTableView.delegate = self
        scheduleTableView.dataSource = self
        
    }
    
    func createTempArrayData() -> [Item] {
        var tempItems : [Item] = []
        
        tempItems.append(Item(img: "teste", name: "Bruno Adam Alves", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false))
        tempItems.append(Item(img: "teste2", name: "Chuck Norris", title: "How to round house kick", stage: "Stage 44", dateTime: "15:00", favorite: false, remider: false))
        
        return tempItems
    }
}

extension ScheduleViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tempItems[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! ScheduleCellController
        
        cell.setItem(newItem: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        
        return label
    }
}
