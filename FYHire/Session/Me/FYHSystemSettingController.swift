//
//  FYHSystemSettingController.swift
//  FYHire
//
//  Created by admin on 2018/8/13.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHSystemSettingController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "设置"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHSystemSettingController {
        let vc = UIStoryboard.init(name: "FYH-Me", bundle: nil).instantiateViewController(withIdentifier: "FYHSystemSettingController")
        
        return vc as! FYHSystemSettingController;
    }

}
