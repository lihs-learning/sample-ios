//
//  ContentView.swift
//  sample
//
//  Created by lihs on 2020/1/15.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class TestView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("0. init")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        print("1. will move to new superview")
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        print("2. did move to new superview")
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print("3. will move to new window")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        print("4. did move to new window")
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = TestView(frame: CGRect(
            x: 100, y: 100,
            width: 100, height: 100)
        )
        view.backgroundColor = .red
        self.view.addSubview(view)
    }
}
