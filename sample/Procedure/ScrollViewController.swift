//
//  ScrollViewController.swift
//  sample
//
//  Created by lihs on 2020/2/3.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let scrollView = UIScrollView(frame: self.view.bounds)
        scrollView.backgroundColor = .white
        scrollView.contentSize = CGSize(width: 5 * self.view.bounds.width, height: self.view.bounds.height)
        scrollView.delegate = self
        
//        scrollView.showsHorizontalScrollIndicator = false
        let collorArr:[UIColor] = [.red, .blue, .yellow, .lightGray, .gray]
        for (i, color) in collorArr.enumerated() {
            let view = UIView(frame: CGRect(
                x: scrollView.bounds.width * CGFloat(i),
                y: 0,
                width: scrollView.bounds.width,
                height: scrollView.bounds.height))
            view.backgroundColor = color
            scrollView.addSubview(view)
        }
//        scrollView.isPagingEnabled = true
        
        self.view.addSubview(scrollView)
    }
    
    // MARK: UIScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("滚动")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("开始拖拽")
    }
    
    func scrollViewEndBeginDragging(_ scrollView: UIScrollView) {
        print("结束拖拽")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("开始减速")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("结束减速")
    }
}
