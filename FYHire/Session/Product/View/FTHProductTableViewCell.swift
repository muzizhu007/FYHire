//
//  FTHProductTableViewCell.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FTHProductTableViewCell: UITableViewCell {
    
    lazy var productImage = UIImageView()
    lazy var nameLabel = UILabel()
    lazy var priceLabel = UILabel()
    lazy var mianYaLabel = UILabel()
    lazy var mianPeiLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(productImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(mianYaLabel)
        contentView.addSubview(mianPeiLabel)

        setUpUI()
    }
    


    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpUI()
    }

    private func setUpUI() {
        
        productImage.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(12)
            make.top.equalToSuperview().offset(20)
            make.width.height.equalTo(80)
        }
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 13)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(productImage.snp.right).offset(18)
            make.top.equalTo(productImage)
            make.right.equalToSuperview().offset(-15)
        }
        
        mianYaLabel.text = "免押金"
        mianYaLabel.font = UIFont.boldSystemFont(ofSize: 9)
        mianYaLabel.textColor = .white
        mianYaLabel.textAlignment = .center
        mianYaLabel.backgroundColor = UIColor.init(hex: "FF7001")
        mianYaLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(9)
            make.left.equalTo(nameLabel)
            make.height.equalTo(14)
            make.width.equalTo(37)
        }
        
        mianPeiLabel.text = "免赔"
        mianPeiLabel.font = UIFont.boldSystemFont(ofSize: 9)
        mianPeiLabel.textColor = .white
        mianPeiLabel.textAlignment = .center
        mianPeiLabel.backgroundColor = UIColor.init(hex: "999999")
        mianPeiLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(mianYaLabel)
            make.left.equalTo(mianYaLabel.snp.right).offset(5)
            make.height.equalTo(14)
            make.width.equalTo(30)
        }
        
        priceLabel.font = UIFont.boldSystemFont(ofSize: 13)
        priceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(mianYaLabel.snp.bottom).offset(20)
            make.left.right.equalTo(nameLabel)
            make.bottom.equalToSuperview().offset(-20)
        }
    }
}
