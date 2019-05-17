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
    
    var tempItems: [[Item]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempItems = createTempArrayData()
        
        scheduleTableView.delegate = self
        scheduleTableView.dataSource = self
        
    }
    
    func createTempArrayData() -> [[Item]] {
        var tempItems : [[Item]] = [[]]
        
        tempItems = [
            [
                Item(img: "img_felipe", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "10:00", favorite: false, remider: false),
                Item(img: "img_arthur", name: "Chuck Norris", title:"How to Roundhouse kick", stage: "Stage 13", dateTime: "14:00", favorite: false, remider: false)
            ],
                [Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_eleny", name: "Eleny", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false)
            ],
                [Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false)
            ],
                [Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false),
                Item(img: "img_isabela", name: "Izabela de Fátima", title: "Accessibility in the Ifood: from research to the creation of culture", stage: "Stage 12", dateTime: "14:00", favorite: false, remider: false)
            ]
        ]
        
        return tempItems
    }
}

extension ScheduleViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempItems[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tempItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tempItems[indexPath.section][indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! ScheduleCellController
        
        cell.setItem(newItem: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 94
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "08:00 - Registration"
        label.font = UIFont(name: "SF Pro Display Light", size: 12)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)
        
        
        return label
    }
    
}
