//
//  TempCell.swift
//  temp
//
//  Created by Bruno Adam Alves on 15/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import UIKit

class TempCell: UITableViewCell {

    @IBOutlet weak var tempImageView: UIImageView!
    @IBOutlet weak var tempTitleLabel: UILabel!
    
    func setTempItem(tempItem: TempItem) {
        tempImageView.image = tempItem.image
        tempTitleLabel.text = tempItem.title
    }
}
