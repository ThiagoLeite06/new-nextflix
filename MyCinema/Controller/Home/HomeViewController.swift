//
//  HomeViewController.swift
//  MyCinema
//
//  Created by Thiago Almeida Leite on 13/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let screen = Home()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view = screen
    }

}
