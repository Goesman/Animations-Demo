//
//  UIColor+Utils.swift
//  Animations
//
//  Created by Jens Goeman on 21/08/14.
//  Copyright (c) 2014 Goesman. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func randomColor() -> UIColor {
        return UIColor(red: (CGFloat(arc4random()) % 255)/255, green: (CGFloat(arc4random()) % 255)/255, blue: (CGFloat(arc4random()) % 255)/255, alpha: 1)
    }
   
}
