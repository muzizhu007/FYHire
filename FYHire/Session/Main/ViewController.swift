//
//  ViewController.swift
//  FYHire
//
//  Created by admin on 2018/8/6.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    class func viewController() -> ViewController {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let homeVC = FYHHomeViewController.viewController()
        let hc = UINavigationController(rootViewController: homeVC)
        vc.setTabBarItem(item: hc.tabBarItem, title: "首页", image: "tab_home_normal", selected_image: "tab_home_selected")
        
        let orderVC = FYHOrderViewController.viewController()
        let oc = UINavigationController(rootViewController: orderVC)
        vc.setTabBarItem(item: oc.tabBarItem, title: "订单", image: "tab_device_normal", selected_image: "tab_device_selected")
        
        let meVC = FYHMeViewController.viewController()
        let mc = UINavigationController(rootViewController: meVC)
        vc.setTabBarItem(item: mc.tabBarItem, title: "我", image: "tab_me_normal", selected_image: "tab_me_selected")
        
        vc.viewControllers = [hc, oc, mc]
        return vc;
    }
    
    private func setTabBarItem(item : UITabBarItem, title : String, image : String, selected_image : String) {
        
        item.title = title
        item.image = UIImage(named: image)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        item.selectedImage = UIImage(named: selected_image)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.gray], for: .normal)
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange], for: .selected)
    }
    
    
}

