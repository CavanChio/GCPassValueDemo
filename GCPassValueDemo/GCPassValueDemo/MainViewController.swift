//
//  MainViewController.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellIdentifier: String = "myCell"
    var myTableView : UITableView?
    lazy var dataArray:NSMutableArray = {
        let dataSource: NSMutableArray = ["通知传值", "协议传值", "闭包传值", "单例传值", "构造器传值", "属性传值", "NSUserDefaults传值"]
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "传值"
        
        self.setUI()
    }

    func setUI() {
        self.myTableView = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain)
        self.myTableView?.delegate = self;
        self.myTableView?.dataSource = self;
        self.myTableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.view.addSubview(self.myTableView!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
        cell.textLabel?.text = self.dataArray[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
