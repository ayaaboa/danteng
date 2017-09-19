//
//  UWUtils.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/29.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

class UWUtils: NSObject {
    
    open func configureRootViewController(){
        let window = UIApplication.shared.delegate?.window
        
        window??.rootViewController = UWTabBarController().tabbarController()
        window??.makeKeyAndVisible()
    }
    
    func switchToLoginViewController(){
        let loginVC:UWLoginVC = UWLoginVC()
        let nav = UINavigationController.init(rootViewController: loginVC)
        UIApplication.shared.delegate?.window??.rootViewController = nav
        UIApplication.shared.keyWindow?.rootViewController?.present(nav, animated: true, completion: nil)
    }
    
    func changeRootContorll(controller:UIViewController) {
        let kWindow = UIApplication.shared.delegate?.window
        let rootVC = kWindow??.rootViewController;
        print(rootVC!)
        kWindow??.rootViewController = controller;
        print(rootVC!)
    }
    
}
