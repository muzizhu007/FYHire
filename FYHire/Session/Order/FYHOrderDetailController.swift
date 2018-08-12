//
//  FYHOrderDetailController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderDetailController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "订单详情"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHOrderDetailController {
        let vc = UIStoryboard.init(name: "FYH-Order", bundle: nil).instantiateViewController(withIdentifier: "FYHOrderDetailController")
        
        return vc as! FYHOrderDetailController;
    }
    
    
    
}
