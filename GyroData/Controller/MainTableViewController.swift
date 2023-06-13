//
//  ViewController.swift
//  GyroData
//
//  Created by kjs on 2022/09/16.
//

import UIKit

class MainTableViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()
    
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
        navigationController?.pushViewController(MeasurementViewController(), animated: true)
    }

}

extension MainTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return GyroDataCell()
    }
}
