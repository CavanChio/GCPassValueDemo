//
//  NotiDetailViewController.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class NotiDetailViewController: UIViewController {

    @IBOutlet weak var myTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func skipLast(_ sender: UIButton) {
        //第二步: 发送通知
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Hello"), object: nil, userInfo: ["text": self.myTF.text!])
        _ = self.navigationController?.popViewController(animated: true)
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
