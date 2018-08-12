//
//  FYHOrderTableCell.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderTableCell: UITableViewCell {
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var netLabel: UILabel!
    @IBOutlet weak var cacheLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var confirmButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
