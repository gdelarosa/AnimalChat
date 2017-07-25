//
//  GradientView.swift
//  Chat
//
//  Created by Gina De La Rosa on 7/24/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

@IBDesignable //Will work in storyboard
class GradientView: UIView {
    
    //changes inside storyboard dynamically
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.3647058824, green: 0.4039215686, blue: 0.8784313725, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.7843137255, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() { //
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
