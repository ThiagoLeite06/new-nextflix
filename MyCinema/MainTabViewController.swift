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
        setupTabBar()
    }
    
    private func configureViewControllers() {
        let homeVC = HomeViewController()
        let moviesVC = MoviesViewController()
        let seriesVC = SeriesViewController()
        let favoritesVC = FavoritesViewController()
        let profileVC = ProfileViewController()
        
        homeVC.setTabBarImage(imageName: "house", title: "Início")
        moviesVC.setTabBarImage(imageName: "film", title: "Filmes")
        seriesVC.setTabBarImage(imageName: "tv", title: "Séries")
        favoritesVC.setTabBarImage(imageName: "star", title: "Favoritos")
        profileVC.setTabBarImage(imageName: "person", title: "Minha Conta")
        
        let homeNC = UINavigationController(rootViewController: homeVC)
        let moviesNC = UINavigationController(rootViewController: moviesVC)
        let seriesNC = UINavigationController(rootViewController: seriesVC)
        let favoritesNC = UINavigationController(rootViewController: favoritesVC)
        let profileNC = UINavigationController(rootViewController: profileVC)
        
        let tabBarList = [homeNC, moviesNC, seriesNC, favoritesNC, profileNC]

        viewControllers = tabBarList
        
    }

    private func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.tintColor = .systemPurple
    }
}

class MoviesViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemPurple
    }
}

class SeriesViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemRed
    }
}

class FavoritesViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemTeal
    }
}

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
    }
}
