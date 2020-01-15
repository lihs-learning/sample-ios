//
//  ContentView.swift
//  sample
//
//  Created by lihs on 2020/1/15.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview({() -> UIView in
            let label = UILabel.init()
            label.text = "你好，World"
            label.sizeToFit()
            label.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
            return label
        }())
    }
}
