//
//  FYHOrderTableCell.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderTableCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpUI()
    }

    private func setUpUI() {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize.init(width: 0, height: 0)
    }
    
}
