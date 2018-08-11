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
        
        hireIntroduceView.backgroundColor = UIColor.init(hex: "CCCCCC")
        contentView.addSubview(hireIntroduceView)
        hireIntroduceView.snp.makeConstraints { (make) in
            make.top.equalTo(productView.snp.bottom).offset(10)
            make.right.left.equalToSuperview()
            make.height.equalTo(200)
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
