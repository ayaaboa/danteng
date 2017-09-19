//
//  UWCreat.swift
//  toolForPhone
//
//  Created by 陈亚勃 on 2017/8/30.
//  Copyright © 2017年 陈亚勃. All rights reserved.
//

import UIKit

private var cornerRadiusKey = "cornerRadiusKey"

extension UIView{
    var cornerRadius:CGFloat{
        set{
            print("set")
            objc_setAssociatedObject(self, cornerRadiusKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_ASSIGN)
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true
        }
        get{
            print("get")
            return objc_getAssociatedObject(self, cornerRadiusKey) as! CGFloat
        }
    }
    
    class func view(rect:CGRect, color:UIColor) -> UIView {
        let view = UIView(frame:rect)
        view.backgroundColor = color
        return view
    }
}

extension UIButton{
    class func button(rect:CGRect, title:NSString, backgroundImage:UIImage, backgroundHgihtImage:UIImage) -> UIButton {
        let button = UIButton(frame:rect)
        button.setTitle(title as String, for: UIControlState.normal)
        button.setBackgroundImage(backgroundImage, for: UIControlState.normal)
        button.setBackgroundImage(backgroundHgihtImage, for: UIControlState.highlighted)
        return button
    }
    
    class func button(rect:CGRect, title:NSString, image:UIImage, hgihtImage:UIImage) -> UIButton {
        let button = UIButton(frame:rect)
        button.setTitle(title as String, for: UIControlState.normal)
        button.setImage(image, for: UIControlState.normal)
        button.setImage(hgihtImage, for: UIControlState.highlighted)
        return button
    }
}
