//
//  UWTabBarController.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/29.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

class UWTabBarController: NSObject {
    
    lazy var tabbarController = { () -> UITabBarController in
        let tabbar = UITabBarController()
        
        let vc1 = UWLoginVC()
        vc1.tabBarItem = UITabBarItem.init(title: "Controller1", image: #imageLiteral(resourceName: "main_off"), selectedImage: #imageLiteral(resourceName: "main_on"))
        let nav1 = UWNavigationController.init(rootViewController: vc1)
        
        let vc2 = UWLoginVC()
        vc2.tabBarItem = UITabBarItem.init(title: "Controller2", image: #imageLiteral(resourceName: "message_off"), selectedImage: #imageLiteral(resourceName: "message_on"))
        let nav2 = UWNavigationController.init(rootViewController: vc2)
        
        let vc3 = UWLoginVC()
        vc3.tabBarItem = UITabBarItem.init(title: "Controller3", image: #imageLiteral(resourceName: "personal_off"), selectedImage: #imageLiteral(resourceName: "personal_on"))
        let nav3 = UWNavigationController.init(rootViewController: vc3)
        
        tabbar.viewControllers = [nav1,nav2,nav3]

        return tabbar
    }
    
}

