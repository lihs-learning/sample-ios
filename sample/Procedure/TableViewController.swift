//
//  TableViewController.swift
//  sample
//
//  Created by lihs on 2020/1/22.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let tableView = UITableView(frame: self.view.bounds)
        tableView.dataSource = self
        tableView.delegate = self

        self.view.addSubview(tableView)
    }
    
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tableViewCell = tableView.dequeueReusableCell(withIdentifier: "id")
        
        if tableViewCell == nil {
            tableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "id")
        }

        tableViewCell?.textLabel?.text = "主标题 - \(indexPath.row)"
        tableViewCell?.detailTextLabel?.text = "副标题"
        return tableViewCell!
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        controller.title = "\(indexPath.row)"
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
