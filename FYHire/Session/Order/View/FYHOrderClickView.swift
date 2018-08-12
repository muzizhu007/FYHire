//
//  FYHOrderClickView.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderClickView: UIView {
    lazy var nameLabel = UILabel()
    lazy var rightImageView = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        setupUI()
    }
    
    private func setupUI() {
        self.addSubview(nameLabel)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        nameLabel.textColor = UIColor.init(hex: "333333")
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
        }
        
        self.addSubview(rightImageView)
        rightImageView.image = UIImage.init(named: "btn_massage_next")
        rightImageView.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalToSuperview()
        }
        
    }

}
