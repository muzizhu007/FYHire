//
//  FYHOrderTableViewController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/12.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FYHOrderTableViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    lazy var orderTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setUpUI() {
        view.addSubview(orderTableView)
        orderTableView.estimatedRowHeight = 250
        orderTableView.delegate = self
        orderTableView.dataSource = self
        
        orderTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    //MARK - tableview delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indentifier = "orderCell"
        
        var cell:FYHOrderTableCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?FYHOrderTableCell
        if cell == nil {
            //通过xib的方式加载单元格
            cell = Bundle.main.loadNibNamed("FYHOrderTableCell" , owner: nil, options: nil)?.first as! FYHOrderTableCell
        }
        
        return cell
    }
    
}
