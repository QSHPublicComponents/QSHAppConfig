//
//  ViewController.swift
//  QSHAppConfigDemo
//
//  Created by caonongyun on 2017/12/25.
//  Copyright © 2017年 QSH. All rights reserved.
//

import UIKit
import QSHAppConfig

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let style = AppStyle.shared
        QSLog("\(BASEURL)")
        QSLog("\(style)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

