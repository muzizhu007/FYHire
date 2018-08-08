//
//  FYHHomeViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHHomeViewController: BaseViewController {
    @IBOutlet weak var hotSectionView: FYHHomeSectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initSubViews()
    }
    
    class func viewController() -> FYHHomeViewController {
        let vc = UIStoryboard.init(name: "FYH-Home", bundle: nil).instantiateViewController(withIdentifier: "FYHHomeViewController")
        
        return vc as! FYHHomeViewController;
    }

    func initSubViews() {
        hotSectionView.titleLabel.text = "热门租赁专区"
        hotSectionView.subTitleLabel.text = "只有想不到·没有租不到"
        hotSectionView.sectionLabel.text = "热门商品"
        
        hotSectionView.moreButton.setTitle("更多", for: .normal)
        
        hotSectionView.sectionImage.image = UIImage.init(named: "icon_hot_pro")
        hotSectionView.bigImage.image = UIImage.init(named: "img_floor_one")
        
        hotSectionView.product1View.productImage.image = UIImage.init(named: "img_iphone_pro")
        hotSectionView.product1View.productName.text = "iPhone X 全新国行 全面屏手机"
        hotSectionView.product1View.productPrice.text = "¥ 399/月起"
        
        hotSectionView.product2View.productImage.image = UIImage.init(named: "img_iphone_pro")
        hotSectionView.product2View.productName.text = "iPhone X 全新国行 全面屏手机"
        hotSectionView.product2View.productPrice.text = "¥ 399/月起"
    }
}
