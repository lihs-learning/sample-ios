//
//  TableCellDetail.swift
//  sample
//
//  Created by lihs on 2020/2/6.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit
import WebKit

class TableCellDetail: UIViewController, WKNavigationDelegate {
    private lazy var webView: WKWebView = {
        let wv = WKWebView(frame: CGRect(
            x: 0,
            y: 0,
            width: self.view.bounds.width,
            height: self.view.bounds.height))
        wv.navigationDelegate = self
        
        return wv
    }()
    
    private lazy var progressView: UIProgressView = {
        let p = UIProgressView(frame: CGRect(
            x: 0,
            y: 88,
            width: self.view.bounds.width,
            height: 20))
        return p
    }()
    
    private var observation: NSKeyValueObservation?

    override func viewDidLoad() {
        super.viewDidLoad()

        observation = webView.observe(\.estimatedProgress, options: .new, changeHandler: {wv, _ in
            let progress = wv.estimatedProgress
            self.progressView.setProgress(Float(progress), animated: true)
        })
        
        self.view.addSubview(webView)
        self.view.addSubview(progressView)
        
        if let url = URL(string: "https://lihs.me/") {
            webView.load(URLRequest(url: url))
        }
    }
    
    deinit {
        observation?.invalidate()
    }
    
    // MARK: WKNavigationDelegate
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
        print("decidePolicy allow")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
