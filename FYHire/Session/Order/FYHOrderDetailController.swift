//
//  FYHOrderDetailController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderDetailController: BaseViewController {
    @IBOutlet weak var contractView: FYHOrderClickView!
    @IBOutlet weak var snView: FYHOrderClickView!
    @IBOutlet weak var wuliuView: FYHOrderClickView!
    @IBOutlet weak var sosNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var payoffBtn: UIButton!
    @IBOutlet weak var giveBackBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "订单详情"
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHOrderDetailController {
        let vc = UIStoryboard.init(name: "FYH-Order", bundle: nil).instantiateViewController(withIdentifier: "FYHOrderDetailController")
        
        return vc as! FYHOrderDetailController;
    }
    
    private func setupUI() {
        contractView.nameLabel.text = "查看合同"
        snView.nameLabel.text = "设备序列号"
        wuliuView.nameLabel.text = "物流信息"
        
        payoffBtn.layer.borderColor = UIColor.gray.cgColor
        payoffBtn.layer.borderWidth = 0.5
        payoffBtn.layer.cornerRadius = 5
        
        giveBackBtn.layer.borderColor = UIColor.gray.cgColor
        giveBackBtn.layer.borderWidth = 0.5
        giveBackBtn.layer.cornerRadius = 5
    }
    
}
