//
//  FYHUserProblemController.swift
//  FYHire
//
//  Created by admin on 2018/8/13.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHUserProblemController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "常见问题"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHUserProblemController {
        let vc = UIStoryboard.init(name: "FYH-Me", bundle: nil).instantiateViewController(withIdentifier: "FYHUserProblemController")
        
        return vc as! FYHUserProblemController;
    }

}
