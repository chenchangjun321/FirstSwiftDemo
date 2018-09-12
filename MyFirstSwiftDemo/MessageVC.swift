//
//  MessageVC.swift
//  MyFirstSwiftDemo
//
//  Created by xiehewanbang on 2018/9/7.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

import UIKit

class MessageVC: MyDemoBaseVC ,UITableViewDelegate,UITableViewDataSource{

    

    override func viewDidLoad() {
        super.viewDidLoad()
         self.title = "消息"
        self.view.backgroundColor = UIColor.green
        self.view.addSubview(self.mTableView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    lazy var mTableView: UITableView? = {
        let mTableView = UITableView.init(frame: CGRect(x:0,y: 0,width: 300,height: 400), style: UITableViewStyle.grouped)
        mTableView.backgroundColor = UIColor.yellow
        mTableView.delegate = self
        mTableView.dataSource = self
        return mTableView;
    }()
    
    
    
//MARK: -----------------------------:tableView------------------------------------
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell =  tableView .dequeueReusableCell(withIdentifier: "123")
        if(cell==nil){
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "123")
            cell?.textLabel?.text = "测试一下啊"
            cell?.detailTextLabel?.text = "详细文字"
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
