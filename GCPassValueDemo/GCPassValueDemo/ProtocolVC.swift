//
//  ProtocolVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class ProtocolVC: UIViewController, ProtocolDetailDelegate {

    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextAction(_ sender: UIButton) {
        let protocolDetailVC = ProtocolDetailVC(nibName: "ProtocolDetailVC", bundle: nil)
        protocolDetailVC.delegate = self
        self.navigationController?.pushViewController(protocolDetailVC, animated: true)
    }
    //实现传值方法
    func passValue(value: String) {
        self.showLabel.text = value
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
