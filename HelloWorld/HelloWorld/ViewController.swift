//
//  ViewController.swift
//  HelloWorld
//
//  Created by zhuangqiuxiong on 2016/10/6.
//  Copyright © 2016年 zhuangqiuxiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        
        //1. UIAlertview
//        let alertView = UIAlertView(title: "Welcome to my First App", message: "Hello world", delegate: nil, cancelButtonTitle: "OK")
//        alertView.cancelButtonIndex = 1;
//        
//        alertView.show()
        
        //2. UIAlerController
        let alertController = UIAlertController(title: "Welcome to my First App", message: "Hello world", preferredStyle: UIAlertControllerStyle.alert)
        
        
        alertController.addAction(UIAlertAction.init(title: "OK", style: UIAlertActionStyle.default, handler: { (alertAction: UIAlertAction) in
            
            print("点击了确定按钮")
            
        }))
        
        
        self.present(alertController, animated: true, completion: nil)
        
    }

}

