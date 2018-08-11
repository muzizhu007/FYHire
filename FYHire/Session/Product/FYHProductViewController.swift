//
//  FYHProductViewController.swift
//  FYHire
//
//  Created by admin on 2018/8/10.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import DNSPageView

class FYHProductViewController: BaseViewController {

    private lazy var pageViewManager: DNSPageViewManager = {
        // 创建DNSPageStyle，设置样式
        let style = DNSPageStyle()
        style.isShowBottomLine = true
        style.isTitleScrollEnable = true
        style.titleViewBackgroundColor = UIColor.clear
        
        // 设置标题内容
        let titles = ["商品", "详情", "评价"]
        
        let contentVC = FTHProductContentViewController()
        contentVC.productView.priceLabel.text = "$399/月"
        contentVC.productView.valueLabel.text = "商品价值：¥8316.00"
        contentVC.productView.nameLabel.text = "iPhone X 全新国行 全新创新"
        
        let detailVC = FTHProductContentViewController()
        
        let commentVC = FTHProductCommentController()
        
        // 创建每一页对应的controller
        let childViewControllers = [contentVC, detailVC, commentVC]
        
        return DNSPageViewManager(style: style, titles: titles, childViewControllers: childViewControllers)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initSubViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHProductViewController {
        let vc = UIStoryboard.init(name: "FYH-Home", bundle: nil).instantiateViewController(withIdentifier: "FYHProductViewController")
        
        return vc as! FYHProductViewController;
    }
    
    private func initSubViews() {
        automaticallyAdjustsScrollViewInsets = false

        // 单独设置titleView的frame
        navigationItem.titleView = pageViewManager.titleView
        pageViewManager.titleView.frame = CGRect(x: 0, y: 0, width: 180, height: 44)
        
        // 单独设置contentView的大小和位置，可以使用autolayout或者frame
        let contentView = pageViewManager.contentView
        view.addSubview(pageViewManager.contentView)
        contentView.snp.makeConstraints { (make) in
            make.right.left.equalToSuperview()
            make.bottom.equalTo(view).offset(-50)
            make.top.equalToSuperview().offset(64) // superView top为平面顶部？？
        }
        
        let bottomView = UIView()
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.bottom)
            make.bottom.right.left.equalToSuperview()
        }
        
        let collectButton = UIButton()
        collectButton.tag = 101
        collectButton.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        collectButton.setBackgroundImage(UIImage.init(named: "icon_collect_normal"), for: .normal)
        bottomView.addSubview(collectButton)
        collectButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(30)
        }
        
        let choseButton = UIButton()
        choseButton.tag = 102
        choseButton.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        choseButton.setTitle("选择规格", for: .normal)
        choseButton.setTitleColor(.white, for: .normal)
        choseButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        choseButton.backgroundColor = UIColor.init(hex: "FF7001")
        choseButton.layer.cornerRadius = 20.0
        
        bottomView.addSubview(choseButton)
        choseButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(75)
            make.right.equalToSuperview().offset(-5)
            make.height.equalTo(40)
        }
    }
    
    @objc func buttonClick(_ sender: UIButton) {
        switch sender.tag {
        case 101:
            collectButtonClick()
            break
        case 102:
            choseButtonClick()
            break;
        default:
            print("没有该按钮")
            break
        }
    }
    
    private func choseButtonClick() {
        let choseVC = FYHProductChoseViewController()
        choseVC.modalPresentationStyle = .overCurrentContext
        choseVC.productImage.image = UIImage.init(named: "img_iphone_pro_slices")
        choseVC.productName.text = "iPhone X 全新国行 全新创新"
        choseVC.productPrice.text = "$399/月"
        choseVC.productValue.text = "商品价值：¥8316.00"
        
        
        self.present(choseVC, animated: true)
    }
    
    private func collectButtonClick() {

        
    }
    
}
