//
//  FYHProductViewController.swift
//  FYHire
//
//  Created by admin on 2018/8/10.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHProductViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHProductViewController {
        let vc = UIStoryboard.init(name: "FYH-Product", bundle: nil).instantiateViewController(withIdentifier: "FYHProductViewController")
        
        return vc as! FYHProductViewController;
    }
    
    
    
    
}
