//
//  TableViewController.swift
//  sample
//
//  Created by lihs on 2020/1/22.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let tableView = UITableView(frame: self.view.bounds)

        self.view.addSubview(tableView)
    }
}
