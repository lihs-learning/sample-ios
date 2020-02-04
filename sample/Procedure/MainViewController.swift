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
        
        let newsViewController = ViewController()
        newsViewController.tabBarItem.title = "新闻"
        
        let videosViewController = CollectionViewController()
        videosViewController.tabBarItem.title = "视频"
        
        let recommandViewController = TableViewController()
        recommandViewController.tabBarItem.title = "推荐"
        
        let meViewController = ScrollViewController()
        meViewController.tabBarItem.title = "我"

        tabBarController.delegate = self
        
        self.setViewControllers([tabBarController], animated: true)
        
        tabBarController.setViewControllers([
            newsViewController,
            videosViewController,
            recommandViewController,
            meViewController
        ], animated: true)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("did select")
    }
}
