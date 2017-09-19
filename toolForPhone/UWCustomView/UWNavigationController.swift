//
//  UWNavigationController.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/29.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

class UWNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationBar.barTintColor = .cyan
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
