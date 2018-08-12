//
//  FYHOrderDetailView.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderDetailView: UIView {
    @IBOutlet weak var addressBackView: UIView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    var contentView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        contentView = loadViewFromNib()
        addSubview(contentView)
        
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupUI()
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
    
    private func setupUI() {
        addressBackView.layer.shadowColor = UIColor.gray.cgColor
        addressBackView.layer.shadowOpacity = 0.8;
        addressBackView.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        
    }
    
}
