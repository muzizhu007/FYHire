//
//  FYHAccountLoginViewController.swift
//  FYHire
//
//  Created by admin on 2018/8/7.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class FYHAccountLoginViewController: BaseViewController {
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var vcodeField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var getvcodeButton: UIButton!
    
    @IBAction func buttonClick(_ sender: UIButton) {
        switch sender.tag {
        case 101:
            break
        case 102:
            sender.countDown(count: 60)
            break
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSubViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        IQKeyboardManager.shared.enable = false
    }
    
    class func viewController() -> FYHAccountLoginViewController {
        let vc = UIStoryboard.init(name: "FYH-Account", bundle: nil).instantiateViewController(withIdentifier: "FYHAccountLoginViewController")
        
        return vc as! FYHAccountLoginViewController;
    }
    
    private func initSubViews() {
        phoneField.borderStyle = .none
        vcodeField.borderStyle = .none
        
        loginButton.backgroundColor = .orange
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        getvcodeButton.setTitleColor(.orange, for: .normal)
        
        let line = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0.5, height: getvcodeButton.frame.height))
        line.backgroundColor = .gray
        getvcodeButton.addSubview(line)
    }
    
}
