//
//  FYHHomeProductView.swift
//  FYHire
//
//  Created by admin on 2018/8/8.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import SnapKit

class FYHHomeProductView: UIView {

    let productImage = UIImageView()
    let productName =  UILabel()
    let productPrice = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        
        self.backgroundColor = UIColor.init(hex: "F4F4F4")
        
        self.addSubview(productImage)
        productImage.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(22)
            make.centerX.equalToSuperview()
            make.width.equalTo(78)
            make.height.equalTo(90)
        }
        
        self.addSubview(productName)
        productName.textAlignment = .center
        productName.textColor = UIColor.init(hex: "A8A8A8")
        productName.font = UIFont.boldSystemFont(ofSize: 13)
        productName.snp.makeConstraints { (make) in
            make.top.equalTo(productImage.snp.bottom).offset(20)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
        
        self.addSubview(productPrice)
        productPrice.textAlignment = .center
        productName.textColor = UIColor.init(hex: "333333")
        productPrice.font = UIFont.boldSystemFont(ofSize: 13)
        productPrice.snp.makeConstraints { (make) in
            make.top.equalTo(productName.snp.bottom).offset(7)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
        
    }
    
}
