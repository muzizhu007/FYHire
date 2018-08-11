//
//  FTHProductCommentController.swift
//  FYHire
//
//  Created by zjjllj on 2018/8/11.
//  Copyright © 2018 fanyou. All rights reserved.
//

import UIKit

class FTHProductCommentController: BaseViewController, UITableViewDataSource,UITableViewDelegate {
    lazy var commentTableView = UITableView()

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
        view.addSubview(commentTableView)
        commentTableView.estimatedRowHeight = 122
        commentTableView.delegate = self
        commentTableView.dataSource = self
        
        commentTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15))
        }
        
    }
    
    //MARK - tableview delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indentifier = "CommentCell"
        
        var cell:FTHProductCommentCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?FTHProductCommentCell
        if cell == nil {
            cell = FTHProductCommentCell(style: .default, reuseIdentifier: indentifier)
        }
        
        cell.avatarImage.image = UIImage.init(named: "img_head_evaluate")
        cell.nameLabel.text = "128****5423"
        cell.commentLabel.text = "机子蛮好的，和新的差不多，使用速度很溜。用了一段时间了，还是租机比较方便。"
        cell.timeLabel.text = "2018-07-27  20:20:20"

        return cell
    }
    
    
}
