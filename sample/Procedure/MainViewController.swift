//
//  MainViewController.swift
//  sample
//
//  Created by lihs on 2020/1/15.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSubviewContollers()
    }
    
    func createSubviewContollers() {
        let discoverViewController = UIViewController()
        discoverViewController.view.backgroundColor = .red
        discoverViewController.tabBarItem.title = "发现"
        
        let productViewController = UIViewController()
        productViewController.view.backgroundColor = .yellow
        productViewController.tabBarItem.title = "制作"
        
        let meViewController = UIViewController()
        meViewController.view.backgroundColor = .green
        meViewController.tabBarItem.title = "我"
        
        setViewControllers([
            discoverViewController,
            productViewController,
            meViewController
        ], animated: true)
    }
}
