//
//  ChatViewController.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/9.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        var chatRecords: [ChatRecord] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        ChatRecord.loadSimulatedRecords() { records in
            self.chatRecords = records
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view

    @IBOutlet var tableView: UITableView!

    func cellIndentifierForRecord(record: ChatRecord) -> String {
        if (record.isSender == true) {
            return "SenderChatCell"
        } else {
            return "ReceiverChatCell"
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.chatRecords.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let record = self.chatRecords[indexPath.row]
        let identifier = self.cellIndentifierForRecord(record)
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! ChatCell
        cell.record = record
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let record = self.chatRecords[indexPath.row]
        let identifier = self.cellIndentifierForRecord(record)
        return tableView.fd_heightForCellWithIdentifier(identifier, configuration: { cell in
            (cell as! ChatCell).record = record
        })
    }
}
