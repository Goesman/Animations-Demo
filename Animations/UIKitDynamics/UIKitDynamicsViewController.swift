//
//  UIKitDynamicsViewController.swift
//  Animations
//
//  Created by Jens Goeman on 17/08/14.
//  Copyright (c) 2014 Goesman. All rights reserved.
//

import UIKit

class UIKitDynamicsViewController: UIViewController {
    var barrier: UIImageView?
    var timer : NSTimer?
    var animator: UIDynamicAnimator?
    var gravity: UIGravityBehavior?
    var collision: UICollisionBehavior?
    var attachment: UIAttachmentBehavior?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.animator = UIDynamicAnimator(referenceView: self.view)
        self.gravity = UIGravityBehavior()
        self.collision = UICollisionBehavior()
        self.collision?.translatesReferenceBoundsIntoBoundary = true
        self.animator?.addBehavior(gravity)
        self.animator?.addBehavior(collision)
        
        self.addTheBarrier()
        self.addTheRain()
    }
    
    func addTheBarrier() -> Void {
        self.barrier = UIImageView(frame: CGRect(x: 230, y: 270, width: 140, height:85))
        self.barrier?.contentMode = .ScaleAspectFit
        self.barrier?.image = UIImage(named: "you-shall-not-pass")
        self.view.addSubview(self.barrier!)
    
        
        let anchorPoint = self.barrier!.frame.origin //CGPoint(x: self.barrier!.center.x, y: (self.barrier!.center.y - 50))
        self.attachment = UIAttachmentBehavior(item: self.barrier, attachedToAnchor:anchorPoint)
        self.attachment?.frequency = 1.0
        self.attachment?.damping = 0.1
        self.collision?.addItem(self.barrier)
        self.gravity?.addItem(self.barrier)
        self.animator?.addBehavior(self.attachment)
    }
    
    func addTheRain() -> Void {
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "timerFired:", userInfo: nil, repeats: true)
    }
    
    func timerFired(timer :NSTimer) -> Void {
        let maxXPosition = self.view.bounds.size.width - 50;
        let xPos : CGFloat = CGFloat(arc4random()) % maxXPosition;
        let yPos : CGFloat = 0.0;
        let wSize : CGFloat = 50.0;
        let hSize : CGFloat = 50.0;
        let frame = CGRect(x: xPos, y: yPos, width: wSize, height: hSize)
        var view = UIView(frame: frame)
        view.backgroundColor = UIColor.randomColor()
        
        self.view.addSubview(view)
        self.gravity?.addItem(view)
        self.collision?.addItem(view)

    }
}
