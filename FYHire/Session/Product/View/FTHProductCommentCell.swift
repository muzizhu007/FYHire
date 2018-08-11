//
//  FTHProductCommentCell.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FTHProductCommentCell: UITableViewCell {
    
    lazy var avatarImage = UIImageView()
    lazy var nameLabel = UILabel()
    lazy var commentLabel = UILabel()
    lazy var timeLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(commentLabel)
        contentView.addSubview(timeLabel)
        
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
        
        avatarImage.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(15)
            make.width.height.equalTo(44)
        }
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 13)
        nameLabel.textAlignment = .left
        nameLabel.textColor = UIColor.init(hex: "1A1A1A")
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(20)
            make.left.equalTo(avatarImage.snp.right).offset(13)
            make.right.equalToSuperview().offset(-15)
        }
        
        commentLabel.font = UIFont.boldSystemFont(ofSize: 12)
        commentLabel.textAlignment = .left
        commentLabel.textColor = UIColor.init(hex: "666666")
        commentLabel.numberOfLines = 0
        commentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(avatarImage.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        timeLabel.font = UIFont.boldSystemFont(ofSize: 9)
        timeLabel.textAlignment = .left
        timeLabel.textColor = UIColor.init(hex: "CCCCCC")
        timeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(commentLabel.snp.bottom).offset(10)
            make.right.left.equalTo(commentLabel)
            make.bottom.equalToSuperview().offset(-15)
        }
    }
    
}
