//
//  Item.swift
//  NanoChallange
//
//  Created by Bruno Adam Alves on 16/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import Foundation

class Item {
    var img: String
    var name: String
    var title: String
    var stage: String
    var dateTime: Date
    var favorite: Bool
    var remider: Bool
    
    init(img: String, name: String, title: String, stage: String, dateTime: Date, favorite: Bool, remider: Bool) {
        self.img = img
        self.name = name
        self.title = title
        self.stage = stage
        self.dateTime = dateTime
        self.favorite = favorite
        self.remider = remider
    }
}
