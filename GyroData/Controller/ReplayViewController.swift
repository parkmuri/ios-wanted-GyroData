//
//  ReplayViewController.swift
//  GyroData
//
//  Created by 무리 on 2023/06/12.
//

import UIKit

class ReplayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureRootView()
        configureNavigationBar()
    }
    
    private func configureRootView() {
        view.backgroundColor = .systemBackground
        
    }
    
    private func configureNavigationBar() {
        title = "다시보기"
    }
}
