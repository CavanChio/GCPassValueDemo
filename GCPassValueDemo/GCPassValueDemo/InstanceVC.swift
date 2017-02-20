//
//  InstanceVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class InstanceVC: UIViewController {
    @IBOutlet weak var myTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextPage(_ sender: UIButton) {
        let instanceVC = InstanceDetailVC(nibName: "InstanceDetailVC", bundle: nil)
        let singleton = Singleton.shareInstance()
        singleton.text = self.myTF.text
        
        self.navigationController?.pushViewController(instanceVC, animated: true)
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
