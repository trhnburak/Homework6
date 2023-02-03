//
//  MainTabBarController.swift
//  Homework6
//
//  Created by Burak Turhan on 1.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10)]
        tabBarAppearance.setTitleTextAttributes(attributes, for: .normal)
    }

}
