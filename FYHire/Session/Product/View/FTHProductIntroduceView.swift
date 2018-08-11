//
//  FTYProductIntroduceView.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import FSPagerView


class FTHProductIntroduceView: UIView,FSPagerViewDataSource,FSPagerViewDelegate  {

    let pagerView = FSPagerView()
    let pagerControl = FSPageControl()
    
    var nameLabel: UILabel! {
        didSet {
            self.nameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        }
    }
    
    var priceLabel : UILabel! {
        didSet {
            self.priceLabel.font = UIFont.boldSystemFont(ofSize: 15)
            self.priceLabel.textColor = UIColor.init(hex: "FF7001")
        }
    }
    
    var valueLabel : UILabel! {
        didSet {
            self.valueLabel.font = UIFont.boldSystemFont(ofSize: 11)
            self.valueLabel.textColor = UIColor.init(hex: "999999")
        }
    }
    
    fileprivate let imageNames = ["img_iphone_first","img_iphone_first","img_iphone_first", "img_iphone_first"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubViews()
        initPagerView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubViews()
        initPagerView()
    }
    
    func initSubViews() {
        self.backgroundColor = .white
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.8;
        self.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        
        priceLabel = UILabel()
        self.addSubview(priceLabel)
        priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(15)
            make.bottom.equalTo(self).offset(-20)
        }
        
        valueLabel = UILabel()
        self.addSubview(valueLabel)
        valueLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(priceLabel)
            make.right.equalTo(self).offset(-15)
        }
        
        nameLabel = UILabel()
        self.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(priceLabel)
            make.bottom.equalTo(priceLabel.snp.top).offset(-15)
        }
        
        //添加banner视图
        self.addSubview(pagerView)
        pagerView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(15)
            make.width.height.equalTo(225)
        }
        self.addSubview(pagerControl)
        pagerControl.snp.makeConstraints { (make) in
            make.top.equalTo(pagerView.snp.bottom).offset(9)
            make.centerX.equalTo(pagerView)
        }
    }
    
    private func initPagerView() {
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.automaticSlidingInterval = 2.0
        pagerView.isInfinite = true
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
        
        pagerControl.numberOfPages = imageNames.count
        pagerControl.contentHorizontalAlignment = .center
        pagerControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        
        //设置下标指示器颜色（选中状态和普通状态）
        pagerControl.setFillColor(UIColor.init(hex: "EBEBEB"), for: .normal)
        pagerControl.setFillColor(UIColor.init(hex: "FF7001"), for: .selected)

        pagerView.delegate = self
        pagerView.dataSource = self
    }
    
    // MARK:- FSPagerView DataSource
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.imageNames.count
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.imageView?.contentMode = .center
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    // MARK:- FSPagerView Delegate
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        pagerView.scrollToItem(at: index, animated: true)
        self.pagerControl.currentPage = index
    }
    
    func pagerViewDidScroll(_ pagerView: FSPagerView) {
        guard self.pagerControl.currentPage != pagerView.currentIndex else {
            return
        }
        self.pagerControl.currentPage = pagerView.currentIndex // Or Use KVO with property "currentIndex"
    }

}
