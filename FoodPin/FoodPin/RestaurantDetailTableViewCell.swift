//
//  RestaurantDetailTableViewCell.swift
//  FoodPin
//
//  Created by zhuangqiuxiong on 2016/10/25.
//  Copyright © 2016年 zhuangqiuxiong. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fieldLabel: UILabel!
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
