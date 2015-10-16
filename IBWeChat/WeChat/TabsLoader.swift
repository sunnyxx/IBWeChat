//
//  TabsLoader.swift
//  IBWeChat
//
//  Created by sunnyxx on 15/10/3.
//  Copyright © 2015年 sunnyxx. All rights reserved.
//

import UIKit

class TabsLoader: NSObject {
    @IBOutlet weak var tabBarController: UITabBarController!
    @IBInspectable var storyboardNames: String!
    override func awakeFromNib() {
        self.tabBarController.tabBar.tintColor = UIColor(red: 0, green: 0.5, blue: 0, alpha: 1)
        self.tabBarController.viewControllers = self.storyboardNames.componentsSeparatedByString(",").map {
            return UIStoryboard(name: $0, bundle: nil).instantiateInitialViewController()!
        }
    }
}
