//
//  FYUnderLineTextField.swift
//  FYHire
//
//  Created by admin on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYUnderLineTextField: UITextField {

    var underLineColor: UIColor?
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        if let lineColor = underLineColor {
            context.setStrokeColor(lineColor.cgColor)
        } else {
            context.setStrokeColor(UIColor.gray.cgColor)
        }

        context.setShouldAntialias(false)
        context.setLineWidth(0.5)
        context.move(to: CGPoint.init(x: 0 , y: self.frame.size.height - 0.5))
        context.addLine(to: CGPoint.init(x: self.frame.size.width, y: self.frame.size.height - 0.5))
        context.strokePath()
    }
 
}
