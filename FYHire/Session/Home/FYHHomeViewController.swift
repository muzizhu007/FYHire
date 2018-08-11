//
//  FYHHomeViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import SnapKit
import FSPagerView

class FYHHomeViewController: UIViewController,FSPagerViewDataSource,FSPagerViewDelegate {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let pagerView = FSPagerView()
    let pagerControl = FSPageControl()
    
    let menuView = CoolSlidingMenuView()
    let hotSectionView = FYHHomeSectionView()
    
    fileprivate let imageNames = ["img_banner_one","img_banner_one","img_banner_one"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSubViews()
        initPagerView()
        initMenuView()
        initSectionView()
    }
    
    class func viewController() -> FYHHomeViewController {
        let vc = UIStoryboard.init(name: "FYH-Home", bundle: nil).instantiateViewController(withIdentifier: "FYHHomeViewController")
        
        return vc as! FYHHomeViewController;
    }

    private func initSubViews() {
        view.backgroundColor = .white
        
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
        
        //添加banner视图
        contentView.addSubview(pagerView)
        pagerView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView)
            make.left.equalTo(contentView).offset(15)
            make.right.equalTo(contentView).offset(-15)
            make.bottom.equalTo(contentView.snp.top).offset(180)
        }
        contentView.addSubview(pagerControl)
        pagerControl.snp.makeConstraints { (make) in
            make.top.equalTo(pagerView.snp.bottom).offset(-10)
            make.right.equalTo(pagerView).offset(-15)
        }
        
        contentView.addSubview(hotSectionView)
        hotSectionView.snp.makeConstraints { (make) in
            make.top.equalTo(pagerView.snp.bottom).offset(113)
            make.right.left.equalTo(pagerView)
            make.bottom.equalToSuperview()
            make.height.equalTo(467)
        }
        
        //添加类型选择视图
        contentView.addSubview(menuView)
        menuView.snp.makeConstraints { (make) in
            make.top.equalTo(pagerView.snp.bottom)
            make.bottom.equalTo(hotSectionView.snp.top)
            make.right.left.equalToSuperview()
        }
    }
    
    private func initPagerView() {
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.automaticSlidingInterval = 2.0
        pagerView.isInfinite = true
        pagerView.transformer = FSPagerViewTransformer(type: .overlap)
        
        pagerControl.numberOfPages = imageNames.count
        pagerControl.contentHorizontalAlignment = .right
//        pagerControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        
        //设置下标指示器颜色（选中状态和普通状态）
        pagerControl.setFillColor(.white, for: .normal)
        pagerControl.setFillColor(.black, for: .selected)
        
        pagerView.delegate = self
        pagerView.dataSource = self
    }
    
    private func initMenuView() {
        // 显示滑动菜单pageControl （Display slider menu）
        menuView.pgCtrl.isHidden = false
        // 未选中页pageControl颜色 (UnSelectedColor of pageControl)
        menuView.pgCtrlNormalColor = .lightGray
        // 选中页pageControl颜色 (SelectedColor of pageControl)
        menuView.pgCtrlSelectedColor = .red
        // 设置滑动菜单的行数 （Sets the number of rows in the sliding menu）
        menuView.countRow = 1
        // 设置滑动菜单的列数 （Sets the number of columns in the sliding menu）
        menuView.countCol = 4
        
        let arrMenu = [
            ["title":"台式机","image":"icon_computer_class"],
            ["title":"手机","image":"icon_telephone_class"],
            ["title":"游戏机","image":"icon_game_class"],
            ["title":"数码潮品","image":"icon_digital_class"],
            ["title":"台式机","image":"icon_computer_class"],
            ["title":"手机","image":"icon_telephone_class"],
            ["title":"游戏机","image":"icon_game_class"],
            ["title":"数码潮品","image":"icon_digital_class"]
        ]
        menuView.arrMenu = arrMenu
    }
    
    private func initSectionView() {
        hotSectionView.titleLabel.text = "热门租赁专区"
        hotSectionView.subTitleLabel.text = "只有想不到·没有租不到"
        hotSectionView.sectionLabel.text = "热门商品"
        
        hotSectionView.moreButton.setTitle("更多", for: .normal)
        hotSectionView.moreButton.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
        
        hotSectionView.sectionImage.image = UIImage.init(named: "icon_hot_pro")
        hotSectionView.bigImage.image = UIImage.init(named: "img_floor_one")
        
        hotSectionView.product1View.productImage.image = UIImage.init(named: "img_iphone_pro")
        hotSectionView.product1View.productName.text = "iPhone X 全新国行 全面屏手机"
        hotSectionView.product1View.productPrice.text = "¥ 399/月起"

        hotSectionView.product2View.productImage.image = UIImage.init(named: "img_iphone_pro")
        hotSectionView.product2View.productName.text = "iPhone X 全新国行 全面屏手机"
        hotSectionView.product2View.productPrice.text = "¥ 399/月起"
    }
    
    @objc func buttonClick(_ sender: UIButton) {
        let productVC = FYHProductViewController.viewController()
        self.navigationController?.show(productVC, sender: nil)
    }
    
    // MARK:- FSPagerView DataSource
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.imageNames.count
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.imageView?.contentMode = .scaleAspectFill
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
