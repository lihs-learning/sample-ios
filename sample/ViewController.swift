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
        
        let view = UIView(frame: CGRect(
            x: 100, y: 100,
            width: 100, height: 100)
        )
        view.backgroundColor = .red
        
        let view2 = UIView(frame: CGRect(
            x: 150, y: 150,
            width: 100, height: 100)
        )
        view2.backgroundColor = .green
        
        self.view.addSubview(view)
        self.view.addSubview(view2)
    }
}
