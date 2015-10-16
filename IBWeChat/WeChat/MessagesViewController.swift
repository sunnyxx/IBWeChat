//
//  MessagesViewController.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/8.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import UIKit

class MessagesViewController: UITableViewController {

    @IBOutlet var loadingView: UIView!
    override func viewDidLoad() {
        self.view.addSubview(self.loadingView)
        self.loadingView.frame = self.view.bounds
        let dtime = dispatch_time(DISPATCH_TIME_NOW, Int64(5.0 * Double(NSEC_PER_SEC)))
        dispatch_after(dtime, dispatch_get_main_queue()) {
            self.loadingView.removeFromSuperview()
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("MessageCell", forIndexPath: indexPath)
    }
}
