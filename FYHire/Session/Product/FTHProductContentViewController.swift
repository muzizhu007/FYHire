//
//  ContentViewController.swift
//  Example
//
//  Created by Daniels on 2018/2/24.
//  Copyright © 2018年 Daniels. All rights reserved.
//

import UIKit
import DNSPageView

class FTHProductContentViewController: BaseViewController  {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let productView = FTHProductIntroduceView()
    let hireIntroduceView = UIView()
    let otherIntroduceView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSubViews()
    }
    
    private func initSubViews() {
        view.backgroundColor = .white
        contentView.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        
        //添加容器视图
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(view)
        }
        
        contentView.addSubview(productView)
        productView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(350)
        }
        
        hireIntroduceView.backgroundColor = .white
        contentView.addSubview(hireIntroduceView)
        hireIntroduceView.snp.makeConstraints { (make) in
            make.top.equalTo(productView.snp.bottom).offset(10)
            make.right.left.equalToSuperview()
            make.height.equalTo(200)
        }
        
        let hireProcessLabel = UILabel()
        hireProcessLabel.text = "租赁流程"
        hireProcessLabel.font = UIFont.boldSystemFont(ofSize: 15)
        hireIntroduceView.addSubview(hireProcessLabel)
        hireProcessLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(15)
        }
        
        let hireIntroduceLabel = UILabel()
        hireIntroduceLabel.text = "选择商品 —— 下单审核 —— 首期支付 —— 发货 —— 月付租金 —— 归还商品"
        hireIntroduceLabel.textColor = UIColor.init(hex: "999999")
        hireIntroduceLabel.font = UIFont.boldSystemFont(ofSize: 12)
        hireIntroduceLabel.numberOfLines = 0
        hireIntroduceView.addSubview(hireIntroduceLabel)
        hireIntroduceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(hireProcessLabel.snp.bottom).offset(13)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        let hireOverLabel = UILabel()
        hireOverLabel.text = "租期结束后可选方案"
        hireOverLabel.font = UIFont.boldSystemFont(ofSize: 15)
        hireIntroduceView.addSubview(hireOverLabel)
        hireOverLabel.snp.makeConstraints { (make) in
            make.top.equalTo(hireIntroduceLabel.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(15)
        }
        
        otherIntroduceView.backgroundColor = UIColor.init(hex: "CCCCCC")
        contentView.addSubview(otherIntroduceView)
        otherIntroduceView.snp.makeConstraints { (make) in
            make.top.equalTo(hireIntroduceView.snp.bottom).offset(10)
            make.right.left.bottom.equalToSuperview()
            make.height.equalTo(200)
        }
        
    }

}

extension FTHProductContentViewController: DNSPageReloadable {
    func titleViewDidSelectedSameTitle() {
        print("重复点击了标题")
    }

    func contentViewDidEndScroll() {
        print("contentView滑动结束")
    }
}
