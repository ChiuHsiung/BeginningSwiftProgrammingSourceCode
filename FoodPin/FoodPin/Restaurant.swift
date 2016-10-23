//
//  Restaurant.swift
//  FoodPin
//
//  Created by zhuangqiuxiong on 2016/10/23.
//  Copyright © 2016年 zhuangqiuxiong. All rights reserved.
//

import Foundation

class Restaurant{
    
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool)
    {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    }
    
    
}
