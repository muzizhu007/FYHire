//
//  FYHHomeProductView.swift
//  FYHire
//
//  Created by admin on 2018/8/8.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHHomeProductView: UIView {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    var contentView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)        
        contentView = loadViewFromNib()
        addSubview(contentView)
    }
    
    //加载xib
    func loadViewFromNib() -> UIView {
        let className = type(of: self)
        let bundle = Bundle(for: className)
        let name = NSStringFromClass(className).components(separatedBy: ".").last
        let nib = UINib(nibName: name!, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
}
