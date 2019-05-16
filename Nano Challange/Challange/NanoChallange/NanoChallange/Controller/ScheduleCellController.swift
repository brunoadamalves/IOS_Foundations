//
//  ScheduleCellControlelr.swift
//  NanoChallange
//
//  Created by Bruno Adam Alves on 16/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class ScheduleCellController: UITableViewCell {
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var favoriteImage: UIImageView!
    @IBOutlet weak var remiderImage: UIImageView!
    
    func setItem(newItem: Item){
        stageLabel.text = newItem.stage
        hourLabel.text = newItem.dateTime
        titleLabel.text = newItem.title
        nameLabel.text = newItem.name
        imageLabel.image = UIImage(named: "img_isabela")
        favoriteImage.image = UIImage(named: "ic_favorite")
        favoriteImage.image = UIImage(named: "ic_time")
    }
}
