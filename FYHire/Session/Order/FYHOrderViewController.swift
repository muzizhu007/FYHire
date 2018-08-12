//
//  FYHOrderViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import DNSPageView

class FYHOrderViewController: UIViewController {
    @IBOutlet weak var titleView: DNSPageTitleView!
    @IBOutlet weak var contentView: DNSPageContentView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    class func viewController() -> FYHOrderViewController {
        let vc = UIStoryboard.init(name: "FYH-Order", bundle: nil).instantiateViewController(withIdentifier: "FYHOrderViewController")
        
        return vc as! FYHOrderViewController;
    }
    
    private func setUpUI() {
        title = "订单"
        automaticallyAdjustsScrollViewInsets = false
        
        // 创建DNSPageStyle，设置样式
        let style = DNSPageStyle()
        style.titleColor = UIColor.init(hex: "A8A8A8")
        style.titleSelectedColor = UIColor.init(hex: "1A1A1A")
        
        style.isShowCoverView = true
        style.coverViewAlpha = 1
        style.coverViewHeight = 30
        style.coverViewRadius = 15
        style.coverViewBackgroundColor = .white

        // 设置标题内容
        let titles = ["进行中", "已完成", "已取消"]
        
        // 设置默认的起始位置
        let startIndex = 0
        
        // 对titleView进行设置
        titleView.titles = titles
        titleView.style = style
        titleView.currentIndex = startIndex
    
        titleView.coverView.layer.borderWidth = 0.5
        titleView.coverView.layer.borderColor = UIColor.gray.cgColor
        
        // 最后要调用setupUI方法
        titleView.setupUI()
        
        // 创建每一页对应的controller
        let childViewControllers: [FYHOrderTableViewController] = titles.map { _ -> FYHOrderTableViewController in
            let controller = FYHOrderTableViewController()
            return controller
        }
        
        // 对contentView进行设置
        contentView.childViewControllers = childViewControllers
        contentView.startIndex = startIndex
        contentView.style = style
        
        // 最后要调用setupUI方法
        contentView.setupUI()
        
        // 让titleView和contentView进行联系起来
        titleView.delegate = contentView
        contentView.delegate = titleView

        
    }
    

}
