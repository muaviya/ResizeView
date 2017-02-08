//
//  ViewController.swift
//  ResizeView
//
//  Created by Administrator on 07.02.17.
//  Copyright © 2017 DGUNH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customview(self, num: "98899880 p")
        
    }
    
    func customview(vc: UIViewController, num: String){
        let v = UIView()
        v.backgroundColor = UIColor.whiteColor()
        v.layer.cornerRadius = 15
        
        //let touch = UITapGestureRecognizer(target:vc, action:Selector("boxButton:"))
        //v.addGestureRecognizer(touch)
        
        let imgBox = UIImageView(image: UIImage(named: "box_image_gray.png"))
        imgBox.contentMode = .ScaleAspectFit
        v.addSubview(imgBox)
        
        let textview = UILabel()
        textview.text = num
        textview.font = UIFont(name:"HelveticaNeue-Bold", size: 13.0)
        textview.textColor = UIColor.blackColor()
        textview.textAlignment = .Center
        v.addSubview(textview)
        
        v.translatesAutoresizingMaskIntoConstraints = false
        textview.translatesAutoresizingMaskIntoConstraints = false
        imgBox.translatesAutoresizingMaskIntoConstraints = false

        v.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[img(20)]-5-|", options: [], metrics: nil, views: ["img": imgBox]))
        v.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[lbl(30)]-0-|", options: [], metrics: nil, views: ["lbl": textview]))
        v.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[lbl(>=50)]-5-[img(20)]-5-|", options: [], metrics: nil, views: ["img": imgBox, "lbl": textview]))
        
        NSLayoutConstraint.activateConstraints(view.constraints + v.constraints)
        
        let logButton : UIBarButtonItem = UIBarButtonItem(customView: v)
        vc.navigationItem.rightBarButtonItem = logButton
    }
    
    /*
    func customview(vc: UIViewController, num: String){
        let v = UIView()
        v.frame.origin.x = 0.0
        v.frame.origin.y = 0.0
        print(num.characters.count)
//        let numCount = num.characters.count
//        if numCount > 6 {
//            v.frame.size.width = 84
//        } else {
//            v.frame.size.width = 78
//        }
        v.frame.size.width = 78
        v.frame.size.height = 30
        v.backgroundColor = UIColor.whiteColor()
        v.layer.cornerRadius = 15
        //let touch = UITapGestureRecognizer(target:vc, action:Selector("boxButton:"))
        //v.autoresizingMask = [.FlexibleBottomMargin, .FlexibleTopMargin, .FlexibleLeftMargin, .FlexibleRightMargin]
        //v.addGestureRecognizer(touch)
        
        let imgBox = UIImageView(image: UIImage(named: "box_image_gray.png"))
//        if numCount > 6 {
//            imgBox.frame.origin.x = 58.0
//        } else {
//            imgBox.frame.origin.x = 52.0
//        }
        imgBox.frame.origin.x = 52.0
        imgBox.frame.origin.y = 5.0
        imgBox.frame.size.width = 20
        imgBox.frame.size.height = 20
        imgBox.contentMode = UIViewContentMode.ScaleAspectFit
        v.addSubview(imgBox)
        
        let textview = UILabel()
//        if numCount > 6 {
//            textview.frame.origin.x = 4.0
//        } else {
//            textview.frame.origin.x = 2.0
//        }
        textview.frame.origin.x = 2.0
        textview.frame.origin.y = 0.0
        textview.frame.size.width = 50
        textview.frame.size.height = 30
        textview.text = num
        textview.font = UIFont(name:"HelveticaNeue-Bold", size: 13.0)//UIFont.systemFontOfSize(12)
        textview.textColor = UIColor.redColor()
        textview.textAlignment = NSTextAlignment.Center
        v.addSubview(textview)
        
        let logButton : UIBarButtonItem = UIBarButtonItem(customView: v)
        vc.navigationItem.rightBarButtonItem = logButton
    }
 */

}

