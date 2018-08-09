//
//  FYHHomeSectionView.swift
//  FYHire
//
//  Created by admin on 2018/8/8.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHHomeSectionView: UIView {

    let titleLabel = UILabel()
    let subTitleLabel = UILabel()
    let sectionLabel = UILabel()
    let moreButton = UIButton()
    let bigImage = UIImageView()
    let sectionImage = UIImageView()
    let product1View = FYHHomeProductView()
    let product2View = FYHHomeProductView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        
        self.backgroundColor = .white
        
        self.addSubview(titleLabel)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.textColor = UIColor.init(hex:"000000")
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(22)
            make.left.equalToSuperview()
            make.height.equalTo(17)
        }
        
        self.addSubview(moreButton)
        moreButton.setTitleColor(UIColor.init(hex:"A8A8A8"), for: .normal)
        moreButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(titleLabel)
            make.right.equalToSuperview()
            make.height.equalTo(13)
        }
        
        self.addSubview(subTitleLabel)
        subTitleLabel.font = UIFont.boldSystemFont(ofSize: 13)
        subTitleLabel.textColor = UIColor.init(hex:"A8A8A8")
        subTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(9)
            make.left.equalToSuperview()
            make.height.equalTo(13)
        }
        
        self.addSubview(bigImage)
        bigImage.snp.makeConstraints { (make) in
            make.top.equalTo(subTitleLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(120)
        }
        
        self.addSubview(sectionImage)
        sectionImage.snp.makeConstraints { (make) in
            make.top.equalTo(bigImage.snp.bottom).offset(10)
            make.left.equalToSuperview()
            make.width.equalTo(12)
            make.height.equalTo(15)
        }
        
        self.addSubview(sectionLabel)
        sectionLabel.font = UIFont.boldSystemFont(ofSize: 13)
        sectionLabel.textColor = UIColor.init(hex:"000000")
        sectionLabel.snp.makeConstraints { (make) in
            make.left.equalTo(sectionImage.snp.right).offset(5)
            make.centerY.equalTo(sectionImage)
        }
        
        self.addSubview(product1View)
        product1View.snp.makeConstraints { (make) in
            make.top.equalTo(sectionImage.snp.bottom).offset(14)
            make.left.equalToSuperview()
            make.width.equalTo(165)
            make.height.equalTo(180)
        }
        
        self.addSubview(product2View)
        product2View.snp.makeConstraints { (make) in
            make.top.equalTo(sectionImage.snp.bottom).offset(14)
            make.right.equalToSuperview()
            make.width.equalTo(165)
            make.height.equalTo(180)
        }
    }
}
