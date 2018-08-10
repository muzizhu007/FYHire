//
//  FYHOrderViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class func viewController() -> FYHOrderViewController {
        let vc = UIStoryboard.init(name: "FYH-Order", bundle: nil).instantiateViewController(withIdentifier: "FYHOrderViewController")
        
        return vc as! FYHOrderViewController;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
