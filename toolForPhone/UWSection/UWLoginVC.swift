//
//  LoginVC.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/29.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

class UWLoginVC: UWBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.tabBarItem.title
    }
    
    override func initSubViews() {
        let loginBtn = UIButton.button(rect: CGRect(x: 100, y: 150, width: ScreenWidth - 200, height: ScreenWidth - 200),
                                       title: "title",
                                       image:#imageLiteral(resourceName: "send_off"),
                                       hgihtImage: #imageLiteral(resourceName: "send_on"))
        loginBtn.addTarget(self, action: #selector(testAction(sender:)), for: .touchUpInside)
        self.view.addSubview(loginBtn)
        
        let testView = UIView.view(rect: CGRect(x: 50, y: 300, width: ScreenWidth - 100, height: 50), color: .red)
        testView.cornerRadius = 5
        self.view.addSubview(testView)
        
        print("height:" + "\(ScreenHeight)");
    }
    
    @objc func testAction(sender:UIButton){
        let vc = UWBaseViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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
