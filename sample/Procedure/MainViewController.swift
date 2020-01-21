//
//  MainViewController.swift
//  sample
//
//  Created by lihs on 2020/1/15.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class MainViewController: UINavigationController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSubviewContollers()
    }
    
    func createSubviewContollers() {
        let tabBarController = UITabBarController()
        
        let discoverViewController = ViewController()
        discoverViewController.tabBarItem.title = "发现"
        
        let productViewController = UIViewController()
        productViewController.view.backgroundColor = .yellow
        productViewController.tabBarItem.title = "制作"
        
        let meViewController = UIViewController()
        meViewController.view.backgroundColor = .green
        meViewController.tabBarItem.title = "我"

        tabBarController.delegate = self
        
        self.setViewControllers([tabBarController], animated: true)
        
        tabBarController.setViewControllers([
            discoverViewController,
            productViewController,
            meViewController
        ], animated: true)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("did select")
    }
}
