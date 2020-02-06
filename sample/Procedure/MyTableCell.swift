//
//  MyCell.swift
//  sample
//
//  Created by lihs on 2020/2/4.
//  Copyright © 2020 lihs. All rights reserved.
//

import UIKit

class MyTableCell: UITableViewCell {
    
    private lazy var titleLable: UILabel = {
        let l = UILabel(frame: CGRect(x: 20, y: 15, width: 300, height: 50))
        l.font = UIFont.systemFont(ofSize: 16)
        return l
    }()
    private lazy var sourceLable: UILabel = {
        let l = UILabel(frame: CGRect(x: 20, y: 80, width: 50, height: 20))
        l.font = UIFont.systemFont(ofSize: 12)
        return l
    }()
    private lazy var commentNumLable: UILabel = {
        let l = UILabel(frame: CGRect(x: 85, y: 80, width: 50, height: 20))
        l.font = UIFont.systemFont(ofSize: 12)
        return l
    }()
    private lazy var timeLable: UILabel = {
        let l = UILabel(frame: CGRect(x: 150, y: 80, width: 50, height: 20))
        l.font = UIFont.systemFont(ofSize: 12)
        return l
    }()
    
    private lazy var rightImage: UIImageView = {
        let i = UIImageView(frame: CGRect(x: 315, y: 15, width: 50, height: 50))
        i.backgroundColor = .red
        return i
    }()
    
    private lazy var closeBtn: UIButton = {
        let b = UIButton(frame: CGRect(x: 290, y: 80, width: 20, height: 15))
        b.backgroundColor = .blue
        b.setTitle("X", for: .normal)
        b.setTitle("V", for: .highlighted)
        b.addTarget(self, action: #selector(tapCloseBtn), for: .touchUpInside)
        return b
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleLable)
        self.contentView.addSubview(sourceLable)
        self.contentView.addSubview(commentNumLable)
        self.contentView.addSubview(timeLable)

        self.contentView.addSubview(rightImage)
        
        self.contentView.addSubview(closeBtn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutTableViewCell() {
        titleLable.text = "学习 iOS 开发"
        
        sourceLable.text = "lihs"
        sourceLable.sizeToFit()
        
        commentNumLable.text = "1 评论"
        commentNumLable.sizeToFit()
        commentNumLable.frame = CGRect(
            x: sourceLable.frame.origin.x + sourceLable.frame.width + 15,
            y: commentNumLable.frame.origin.y,
            width: commentNumLable.frame.size.width,
            height: commentNumLable.frame.size.height)
        
        timeLable.text = "刚刚"
        timeLable.sizeToFit()
        timeLable.frame = CGRect(
            x: commentNumLable.frame.origin.x + commentNumLable.frame.width + 15,
            y: timeLable.frame.origin.y,
            width: timeLable.frame.width,
            height: timeLable.frame.height)
        
//        rightImage.image = UIImage.init(named: "")
    }
    
    @objc func tapCloseBtn() {
        print("tap close button")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
