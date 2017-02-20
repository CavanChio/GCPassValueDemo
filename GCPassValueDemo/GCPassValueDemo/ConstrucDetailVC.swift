//
//  ConstrucDetailVC.swift
//  GCPassValueDemo
//
//  Created by Cavan on 2017/2/17.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class ConstrucDetailVC: UIViewController {
    
    var text: String?
    
    //自定义构造器
    //析构器
    deinit {
        print(#function)
    }
    //自定义构造器
    init(text: String) {
        super.init(nibName: nil, bundle: nil)
        print(#function)
        print(text)
        self.text = text
        //指定构造器
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    @IBOutlet weak var showlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.showlabel.text = self.text
        // Do any additional setup after loading the view.
    }

    @IBAction func lastPage(_ sender: UIButton) {
        
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
