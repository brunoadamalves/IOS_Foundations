//
//  newsListCellController.swift
//  Challenge_api
//
//  Created by Bruno Adam Alves on 23/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class newsListCellController: UITableViewCell {
    
    @IBOutlet weak var newsTitle: UILabel!
    
    func setItem(newsItem: newsItem){
//        newsCover.image = #imageLiteral(resourceName: <#T##String#>)
        newsTitle.text = "teste"
    }
}
