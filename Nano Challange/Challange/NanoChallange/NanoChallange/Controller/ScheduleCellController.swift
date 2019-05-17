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
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var reminderButton: UIButton!
    
    
    func setItem(newItem: Item){
        stageLabel.text = newItem.stage
        hourLabel.text = newItem.dateTime
        titleLabel.text = newItem.title
        nameLabel.text = newItem.name
        imageLabel.image = UIImage(named: newItem.img)
        favoriteButton.setImage(UIImage(named: "ic_favorite"), for: .normal)
        reminderButton.setImage(UIImage(named: "ic_time"), for: .normal)
    }
    
    override func layoutSubviews() {
        stageLabel.layer.masksToBounds = true
        stageLabel.layer.cornerRadius = 10
    }
}
