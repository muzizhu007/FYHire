//
//  FYHProductListController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHProductListController: BaseViewController, UITableViewDataSource,UITableViewDelegate  {
    
    lazy var productTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func viewController() -> FYHProductListController {
        let vc = UIStoryboard.init(name: "FYH-Home", bundle: nil).instantiateViewController(withIdentifier: "FYHProductListController")
        
        return vc as! FYHProductListController;
    }
    
    private func setUpUI() {
        view.addSubview(productTableView)
        productTableView.estimatedRowHeight = 140
        productTableView.delegate = self
        productTableView.dataSource = self
        
        productTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15))
        }
    }
    
    //MARK - tableview delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indentifier = "ProductCell"
        
        var cell:FTHProductTableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?FTHProductTableViewCell
        if cell == nil {
            cell = FTHProductTableViewCell(style: .default, reuseIdentifier: indentifier)
        }
        
        cell.productImage.image = UIImage.init(named: "img_exp_iphone")
        cell.nameLabel.text = "iPhone8 Plus 全新国行 美在智慧"
        cell.priceLabel.text = "$399/月"
        
        return cell
    }
    

}
