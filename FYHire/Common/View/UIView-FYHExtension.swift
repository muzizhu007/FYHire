//
//  UIView-FYHExtension.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

extension UIView {
    func addCorner(roundingCorners: UIRectCorner, cornerSize: CGSize) {
        let path = UIBezierPath.init(roundedRect: bounds, byRoundingCorners: roundingCorners, cornerRadii: cornerSize)
        let cornerLayer = CAShapeLayer()
        cornerLayer.frame = bounds
        cornerLayer.path = path.cgPath
        
        layer.mask = cornerLayer
    }
}

