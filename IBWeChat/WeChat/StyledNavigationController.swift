//
//  StyledNavigationController.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/7.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import UIKit

class StyledNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.tintColor = UIColor.whiteColor();
        self.navigationBar.barTintColor = UIColor(white: 0.1, alpha: 1)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

}
