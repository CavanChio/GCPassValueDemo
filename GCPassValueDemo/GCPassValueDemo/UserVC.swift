//
//  UserVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class UserVC: UIViewController {

    @IBOutlet weak var myTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func nextPage(_ sender: UIButton) {
        //获取default单例实例对象
        let defaults = UserDefaults.standard
        //设置
        defaults.set(self.myTF.text, forKey: "text")
        //同步数据
        defaults.synchronize()
        
        let userDetailVC = UserDetailVC(nibName: "UserDetailVC", bundle: nil)
        self.navigationController?.pushViewController(userDetailVC, animated: true)
        
        
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
