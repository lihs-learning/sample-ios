//
//  CollectionViewController.swift
//  sample
//
//  Created by lihs on 2020/1/22.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.itemSize = CGSize(width: (self.view.frame.size.width - 10) / 2, height: 300)
        
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "id")
        
        self.view.addSubview(collectionView)
    }
    
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "id", for: indexPath)
        collectionViewCell.backgroundColor = .red
        return collectionViewCell
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = UIViewController()
        controller.view.backgroundColor = .white
        controller.title = "\(indexPath.item)"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item % 3 == 0 {
            return CGSize(width: self.view.frame.size.width, height: 100)
        } else {
            return CGSize(width: (self.view.frame.size.width - 10) / 2, height: 300)
        }
    }
}
