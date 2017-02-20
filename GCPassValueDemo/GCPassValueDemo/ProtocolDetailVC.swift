//
//  ProtocolDetailVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

//定义一个协议
@objc protocol ProtocolDetailDelegate {
    @objc optional func passValue(value: String)-> Void
}

class ProtocolDetailVC: UIViewController {

    //声明协议属性
    weak var delegate: ProtocolDetailDelegate?
    @IBOutlet weak var myTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func lastAction(_ sender: UIButton) {
        //传值
        if let delegate = self.delegate {
            delegate.passValue!(value: self.myTF.text!)
        }
        
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
