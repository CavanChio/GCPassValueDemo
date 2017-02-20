//
//  ClosureDetailVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

//第一步: 声明闭包类型
typealias Closure = (String?) -> Void

class ClosureDetailVC: UIViewController {

    //第二步: 声明闭包属性
    var closure: Closure!
    @IBOutlet weak var myTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //第三步: 闭包传值方法
    func callBack(closure: Closure!) {
        //第四步: 赋值闭包
        self.closure = closure
    }
    
    @IBAction func lastPage(_ sender: UIButton) {
        
        //可选绑定
        if let closure = self.closure {
            closure(self.myTF.text)
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
