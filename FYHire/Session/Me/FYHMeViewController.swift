//
//  FYHMeViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHMeViewController: UIViewController {
    
    
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userInfoLabel: UILabel!
    
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var identityView: FYHMeClickView!
    @IBOutlet weak var collectionView: FYHMeClickView!
    @IBOutlet weak var commentView: FYHMeClickView!
    @IBOutlet weak var problemView: FYHMeClickView!
    
    @IBOutlet weak var systemView: UIView!
    @IBOutlet weak var helpView: FYHMeClickView!
    @IBOutlet weak var settingView: FYHMeClickView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    class func viewController() -> FYHMeViewController {
        let vc = UIStoryboard.init(name: "FYH-Me", bundle: nil).instantiateViewController(withIdentifier: "FYHMeViewController")
        
        return vc as! FYHMeViewController;
    }
    
    private func setupUI() {
        headView.layer.shadowColor = UIColor.gray.cgColor
        headView.layer.shadowOpacity = 0.8;
        headView.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        
        userView.layer.shadowColor = UIColor.gray.cgColor
        userView.layer.shadowOpacity = 0.8;
        userView.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        
        systemView.layer.shadowColor = UIColor.gray.cgColor
        systemView.layer.shadowOpacity = 0.8;
        systemView.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        
        identityView.tag = 301
        identityView.nameLabel.text = "身份信息"
        identityView.icon.image = UIImage.init(named: "icon_massage_mine")
        identityView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor.init(hex: "F5F5F5")
        identityView.addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        collectionView.tag = 302
        collectionView.nameLabel.text = "我的收藏"
        collectionView.icon.image = UIImage.init(named: "icon_collect_mine")
        collectionView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)
        
        let lineView2 = UIView()
        lineView2.backgroundColor = UIColor.init(hex: "F5F5F5")
        collectionView.addSubview(lineView2)
        lineView2.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }

        commentView.tag = 303
        commentView.nameLabel.text = "我的评论"
        commentView.icon.image = UIImage.init(named: "icon_comment_mine")
        commentView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)

        let lineView3 = UIView()
        lineView3.backgroundColor = UIColor.init(hex: "F5F5F5")
        commentView.addSubview(lineView3)
        lineView3.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        problemView.tag = 304
        problemView.nameLabel.text = "常见问题"
        problemView.icon.image = UIImage.init(named: "icon_question_mine")
        problemView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)

        helpView.tag = 305
        helpView.nameLabel.text = "客服与帮助"
        helpView.icon.image = UIImage.init(named: "icon_help_mine")
        helpView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)

        let lineView4 = UIView()
        lineView4.backgroundColor = UIColor.init(hex: "F5F5F5")
        helpView.addSubview(lineView4)
        lineView4.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        settingView.tag = 306
        settingView.nameLabel.text = "设置"
        settingView.icon.image = UIImage.init(named: "icon_set_mine")
        settingView.addClickAction(#selector(tapGestureAction(_:)), tapHandler: self)

    }
    
    @objc func tapGestureAction(_ sender: UITapGestureRecognizer) {
        
        switch sender.view?.tag {
        case 301:
            print("身份信息")
            let vc = FYHUserIDUploadController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        case 302:
            print("我的收藏")
            let vc = FYHUserCollectionController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        case 303:
            print("我的评论")
            let vc = FYHUserCommentController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        case 304:
            print("常见问题")
            let vc = FYHUserProblemController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        case 305:
            print("客服与帮助")
            let vc = FYHSystemHelpController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        case 306:
            print("设置")
            let vc = FYHSystemSettingController.viewController()
            self.navigationController?.show(vc, sender: nil)
            break
        default:
            print("不支持的动作")
        }
        
    }

}
