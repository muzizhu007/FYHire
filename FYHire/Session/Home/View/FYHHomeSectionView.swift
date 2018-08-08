//
//  FYHHomeSectionView.swift
//  FYHire
//
//  Created by admin on 2018/8/8.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHHomeSectionView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var sectionImage: UIImageView!
    @IBOutlet weak var product1View: FYHHomeProductView!
    @IBOutlet weak var product2View: FYHHomeProductView!
    
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
