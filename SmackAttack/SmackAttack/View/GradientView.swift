//
//  GradientView.swift
//  SmackAttack
//
//  Created by Andrew Ramirez on 5/24/18.
//  Copyright © 2018 Andrew Ramirez. All rights reserved.
//

import UIKit

//@IBDesignable lets this class know that is needs to render inside the storyboard
@IBDesignable
class GradientView: UIView {
    
        //@IBInspectable will allow items to change in storyboard dynamically
        @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.287455678, green: 0.3025078475, blue: 0.8791555762, alpha: 1) {
            didSet {
                self.setNeedsLayout()
            }
        }
    
        @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
            didSet {
                self.setNeedsLayout()
        }
    }
    
    //func is called when variables change
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }

}
