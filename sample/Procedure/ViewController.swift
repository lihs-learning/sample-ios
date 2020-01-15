//
//  ContentView.swift
//  sample
//
//  Created by lihs on 2020/1/15.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

// MARK: TestView
class TestView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("view: 0. init")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        print("view: 1. will move to new superview")
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        print("view: 2. did move to new superview")
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print("view: 3. will move to new window")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        print("view: 4. did move to new window")
    }
}

// MARK: ViewController
class ViewController: UIViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("view controller: 0. init")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view controller: 1. default view will appear")
    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        print("view controller: 2. default view did appear")
    }

    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        print("view controller: 3. default view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        print("view controller: 4. default view did disappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = TestView(frame: CGRect(
            x: 100, y: 100,
            width: 100, height: 100)
        )
        view.backgroundColor = .red
        self.view.addSubview(view)
        
        let tapGesture = UITapGestureRecognizer(
            target: self, action: #selector(pushController))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func pushController() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = "内容"
        viewController.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "右侧标题", style: .plain, target: self, action: nil)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
