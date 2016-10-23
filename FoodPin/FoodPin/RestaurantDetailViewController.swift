//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by zhuangqiuxiong on 2016/10/23.
//  Copyright © 2016年 zhuangqiuxiong. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    
    @IBOutlet weak var restaurantImageView: UIImageView!
    
    var restaurantImageName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        restaurantImageView.image = UIImage(named: restaurantImageName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
