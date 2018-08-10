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
        
        // 创建每一页对应的controller
        let childViewControllers: [ContentViewController] = titles.map { _ -> ContentViewController in
            let controller = ContentViewController()
            controller.view.backgroundColor = UIColor.init(red: CGFloat(arc4random_uniform(256))/255.0, green: CGFloat(arc4random_uniform(256))/255.0, blue: CGFloat(arc4random_uniform(256))/255.0, alpha: 1.0)
            return controller
        }
        
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
            make.top.right.left.equalToSuperview()
            make.bottom.equalTo(view).offset(-50)
        }
        
        let bottomView = UIView()
        view.addSubview(bottomView)
        bottomView.backgroundColor = .white
        bottomView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.bottom)
            make.bottom.right.left.equalToSuperview()
        }
    }

}
