//
//  FYHUserCommentController.swift
//  FYHire
//
//  Created by admin on 2018/8/13.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHUserCommentController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "我的评论"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHUserCommentController {
        let vc = UIStoryboard.init(name: "FYH-Me", bundle: nil).instantiateViewController(withIdentifier: "FYHUserCommentController")
        
        return vc as! FYHUserCommentController;
    }

}
