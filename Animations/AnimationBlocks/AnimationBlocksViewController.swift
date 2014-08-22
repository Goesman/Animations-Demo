//
//  AnimationBlocksViewController.swift
//  Animations
//
//  Created by Jens Goeman on 17/08/14.
//  Copyright (c) 2014 Goesman. All rights reserved.
//

import UIKit

class AnimationBlocksViewController: UIViewController {
    @IBOutlet weak var viewToAnimate: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addFirstAnimation()
        self.addSecondAnimation()
        self.addThirdAnimation()
    }
    
    func addFirstAnimation() -> Void {
        UIView.animateWithDuration(1.0, delay: 1.0, options: .CurveEaseInOut | .Repeat | .Autoreverse, animations: { () -> Void in
            self.viewToAnimate.frame.inset(dx: 50, dy: 50)
        }) { (animationFinished : Bool) -> Void in
            //nothing to do, move a long now!!
        }
    }
    
    func addSecondAnimation() -> Void {
        UIView.animateWithDuration(2.0, delay: 4.0, options: .CurveEaseInOut | .Repeat | .Autoreverse, animations: { () -> Void in
            self.viewToAnimate.backgroundColor = UIColor.purpleColor()
        }) { (animationFinished : Bool) -> Void in
                //nothing to do, move a long now!!
        }
    }
    
    func addThirdAnimation() -> Void {
        UIView.animateWithDuration(1, delay: 6.0, options: .Repeat, animations: { () -> Void in
            self.viewToAnimate.transform = CGAffineTransformMakeRotation(CGFloat(1.5*M_PI))
        }) { (animationFinished : Bool) -> Void in
                //nothing to do, move a long now!!
        }
    }
}
