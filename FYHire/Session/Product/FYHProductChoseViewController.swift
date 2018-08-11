//
//  FYHProductChoseViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import SnapKit

class FYHProductChoseViewController: BaseViewController {
    
    lazy var contentView = UIView()
    lazy var backButton = UIButton()
    lazy var headView = UIView()
    lazy var productImage = UIImageView()
    lazy var productName = UILabel()
    lazy var productPrice = UILabel()
    lazy var productValue = UILabel()
    
    lazy var buyButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentView.addCorner(roundingCorners: [.topLeft, .topRight] , cornerSize: CGSize.init(width: 30.0, height: 30.0))
        
        buyButton.layer.cornerRadius = 20
    }

    private func setUpUI() {
        view.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.55)
        
        backButton.tag = 201
        backButton.backgroundColor = .clear
        backButton.addTarget(self, action: #selector(backgroundClick(_:)), for: .touchUpInside)
        view.addSubview(backButton)
        backButton.snp.makeConstraints { (make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(90)
        }
        
        contentView.backgroundColor = .white
        view.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.right.left.bottom.equalToSuperview()
            make.top.equalTo(backButton.snp.bottom)
        }

        headView.backgroundColor = UIColor.init(hex: "FFF6EF")
        contentView.addSubview(headView)
        headView.snp.makeConstraints { (make) in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(150)
        }
        
        productName.textColor = UIColor.init(hex: "FF7001")
        productName.font = UIFont.boldSystemFont(ofSize: 20)
        contentView.addSubview(productName)
        productName.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(77)
            make.left.equalToSuperview().offset(170)
            make.right.equalToSuperview().offset(-15)
        }
        
        contentView.addSubview(productImage)
        productImage.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.centerY.equalTo(productName)
        }
        
        productPrice.font = UIFont.boldSystemFont(ofSize: 21)
        productPrice.textAlignment = .center
        contentView.addSubview(productPrice)
        productPrice.snp.makeConstraints { (make) in
            make.top.equalTo(headView.snp.bottom).offset(35)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        productValue.font = UIFont.boldSystemFont(ofSize: 11)
        productValue.textAlignment = .center
        productValue.textColor = UIColor.init(hex: "666666")
        contentView.addSubview(productValue)
        productValue.snp.makeConstraints { (make) in
            make.top.equalTo(productPrice.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        buyButton.tag = 202
        buyButton.setTitle("开始下单", for: .normal)
        buyButton.setTitleColor(.white, for: .normal)
        buyButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        buyButton.backgroundColor = UIColor.init(hex: "FF7001")
        buyButton.addTarget(self, action: #selector(backgroundClick(_:)), for: .touchUpInside)
        contentView.addSubview(buyButton)
        buyButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.bottom.right.equalToSuperview().offset(-15)
            make.height.equalTo(40)
        }
        
    }
    
    @objc func backgroundClick(_ sender: UIButton) {
        switch sender.tag {
        case 202:
            print("开始下单了～")
            break
        case 201:
            self.dismiss(animated: true, completion: nil)
            break
        default:
            print("没有该按钮: \(sender.tag)")
        }
        
    }

}
