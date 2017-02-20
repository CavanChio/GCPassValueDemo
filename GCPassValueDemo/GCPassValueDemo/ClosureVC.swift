//
//  ClosureVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class ClosureVC: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func skipButton(_ sender: UIButton) {
        let closureVC = ClosureDetailVC()
        closureVC.callBack{(value: String?) -> Void in
            self.showLabel.text = value
        }
        self.navigationController?.pushViewController(closureVC, animated: true)
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
