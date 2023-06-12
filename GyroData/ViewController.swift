//
//  ViewController.swift
//  GyroData
//
//  Created by kjs on 2022/09/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureRootView()
        configureNavigationBar()
    }
    
    private func configureRootView() {
        view.backgroundColor = .systemBackground
    }
    
    private func configureNavigationBar() {
        title = "목록"
        
        let barButton = UIBarButtonItem(title: "측정", style: .plain, target: self, action: #selector(barButtonTapped))
        
        navigationItem.rightBarButtonItem = barButton
    }

    @objc
    private func barButtonTapped() {
        
    }

}

