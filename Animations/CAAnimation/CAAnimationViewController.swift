//
//  CAAnimationViewController.swift
//  Animations
//
//  Created by Jens Goeman on 17/08/14.
//  Copyright (c) 2014 Goesman. All rights reserved.
//

import UIKit
import QuartzCore

class CAAnimationViewController: UIViewController {
    @IBOutlet weak var viewToAnimate: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewToAnimate.layer.backgroundColor = UIColor.greenColor().CGColor
        self.addFirstAnimation()
        self.addSecondAnimation()
        self.addThirdAnimation()
    }
    
    func addFirstAnimation() -> Void {
        var animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1
        animation.toValue = 2
        animation.duration = 1
        animation.repeatCount = HUGE
        animation.autoreverses = true
        animation.beginTime = CACurrentMediaTime()+1
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        self.viewToAnimate.layer.addAnimation(animation, forKey: "first")
    }
    
    func addSecondAnimation() -> Void {
        var animation = CABasicAnimation()
        animation.keyPath = "backgroundColor"
        animation.fromValue = UIColor.greenColor().CGColor
        animation.toValue = UIColor.purpleColor().CGColor
        animation.duration = 2
        animation.repeatCount = HUGE
        animation.autoreverses = true
        animation.beginTime = CACurrentMediaTime()+4
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        self.viewToAnimate.layer.addAnimation(animation, forKey: "second")
    }
    
    func addThirdAnimation() -> Void {
        var animation = CABasicAnimation()
        animation.keyPath = "transform.rotation.z"
        animation.fromValue = 0
        animation.toValue = M_PI
        animation.duration = 1
        animation.repeatCount = HUGE
        animation.beginTime = CACurrentMediaTime()+6
        animation.fillMode = kCAFillModeForwards
        self.viewToAnimate.layer.addAnimation(animation, forKey: "third")
    }
}
