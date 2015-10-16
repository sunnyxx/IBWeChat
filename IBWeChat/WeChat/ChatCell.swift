//
//  ChatCell.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/12.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import Foundation

class ChatCell: UITableViewCell {
    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var contentLabel: UILabel!
    var record: ChatRecord! {
        get {
            return nil
        }
        set {
            let image = UIImage(named: newValue.avatarName)
            self.avatarButton.setImage(image, forState: .Normal)
            self.contentLabel.text = newValue.content
        }
    }
}