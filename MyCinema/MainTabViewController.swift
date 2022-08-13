//
//  MainTabViewController.swift
//  MyCinema
//
//  Created by Thiago Almeida Leite on 13/08/22.
//

import UIKit

final class MainTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        configureViewControllers()
    }
    
    private func configureViewControllers() {
        view.backgroundColor = .white
        
        self.tabBar.isTranslucent = false
        
        let home = templateNavigationController(image: UIImage(systemName: "house")!, rootViewController: HomeViewController())
                
        viewControllers = [home]
    }

    private func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        
        return nav
    }
}
