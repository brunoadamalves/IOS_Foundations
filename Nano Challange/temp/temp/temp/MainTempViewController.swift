//
//  MainTempViewController.swift
//  temp
//
//  Created by Bruno Adam Alves on 15/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class MainTempViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tempItems: [TempItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempItems = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [TempItem] {
        var tempItems : [TempItem] = []
        
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "Temp item 1"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "int-overview"), title: "Temp item 2"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "dev-setup"), title: "Temp item 3"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 4"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 5"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        tempItems.append(TempItem(image: #imageLiteral(resourceName: "vlog-4"), title: "Temp item 6"))
        
        return tempItems
    }
}

extension MainTempViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tempItems[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tempItemCell") as! TempCell
        
        cell.setTempItem(tempItem: item)
        
        return cell
    }
}
