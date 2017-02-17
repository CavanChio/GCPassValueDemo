//
//  NotiViewController.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class NotiViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //第一种第一步: 注册通知
//        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Hello"), object: nil, queue: OperationQueue.main) {
//            (notes) in
//            self.showLabel.text = notes.userInfo!["text"] as! String?
//        }
//        
        //第二种第一步: 注册通知
        NotificationCenter.default.addObserver(self, selector: #selector(notiAction), name: NSNotification.Name(rawValue: "Hello"), object: nil)
        
//        //第三种第一步:
//        NotificationCenter.default.addObserver(<#T##observer: NSObject##NSObject#>, forKeyPath: <#T##String#>, options: <#T##NSKeyValueObservingOptions#>, context: <#T##UnsafeMutableRawPointer?#>)
        
        
    }
    
    //第二种回调方法
    func notiAction(noti: Notification) {
        self.showLabel.text = noti.userInfo!["text"] as! String?

    }
    
    //析构, 相当于dealloc
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @IBAction func skipNext(_ sender: UIButton) {
        let notiDetailVC = NotiDetailViewController(nibName: "NotiDetailViewController", bundle: nil)
        self.navigationController?.pushViewController(notiDetailVC, animated: true)
        
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
