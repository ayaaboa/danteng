//
//  UWBaseViewController.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/29.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

class UWBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.layoutNavController()
        self.initSubViews()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open func initSubViews(){
        self.view.backgroundColor = .white
    }
    
    open func layoutNavController(){
        if (self.navigationController?.viewControllers.count)! > 1 {
            let leftNavBtn = UIButton(frame: CGRect.init(x: 0, y: 0, width: 56, height: 30))
            leftNavBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 10)
            leftNavBtn.setImage(#imageLiteral(resourceName: "back_white"), for: UIControlState.normal)
            leftNavBtn.addTarget(self, action:#selector(self.leftNavAction(sender:)), for: .touchUpInside)
            self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: leftNavBtn)
        }
    }

    @objc open func leftNavAction(sender:UIButton){
        self.navigationController?.popViewController(animated: true)
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
