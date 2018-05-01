//
//  TabBarViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 5/1/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewWillLayoutSubviews() {
        var tabFrame = self.tabBar.frame
        // - 40 is editable , the default value is 49 px, below lowers the tabbar and above increases the tab bar size
        tabFrame.size.height = 100
        tabFrame.origin.y = self.view.frame.size.height - 100
        self.tabBar.frame = tabFrame
    }
}
