//
//  newsItem.swift
//  Challenge_api
//
//  Created by Bruno Adam Alves on 23/05/19.
//  Copyright © 2019 Bruno Adam Alves. All rights reserved.
//

import Foundation

class newsItem {
    var title: String
    var newsCover: String
    
    init(title: String, newsCover: String) {
        self.title = title
        self.newsCover = newsCover
    }
}
