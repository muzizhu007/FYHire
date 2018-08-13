//
//  FYHSystemHelpController.swift
//  FYHire
//
//  Created by admin on 2018/8/13.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHSystemHelpController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "客服与帮助"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    class func viewController() -> FYHSystemHelpController {
        let vc = UIStoryboard.init(name: "FYH-Me", bundle: nil).instantiateViewController(withIdentifier: "FYHSystemHelpController")
        
        return vc as! FYHSystemHelpController;
    }

}
