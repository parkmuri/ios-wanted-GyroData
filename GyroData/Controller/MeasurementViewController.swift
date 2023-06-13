//
//  MeasurementViewController.swift
//  GyroData
//
//  Created by 무리 on 2023/06/12.
//

import UIKit

class MeasurementViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureRootView()
        configureNavigationBar()
    }
    
    private func configureRootView() {
        view.backgroundColor = .systemBackground
        
    }
    
    private func configureNavigationBar() {
        title = "측정하기"
        
        let barButton = UIBarButtonItem(title: "저장", style: .plain, target: self, action: #selector(barButtonTapped))
        
        navigationItem.rightBarButtonItem = barButton
    }

    @objc
    private func barButtonTapped() {
        
    }
}
