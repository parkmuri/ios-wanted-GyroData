//
//  MainViewController.swift
//  GyroData
//
//  Created by kjs on 2022/09/16.
//

import UIKit

class MainTableViewController: UIViewController {
    var gyrodata = [GyroDataModel]()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(GyroDataCell.self, forCellReuseIdentifier: GyroDataCell.identifier)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureRootView()
        configureNavigationBar()
        testArray()
    }
    
    private func configureRootView() {
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
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
    
    private func testArray() {
        let gyro = GyroDataModel(id: UUID(), type: .gyro, xAxis: 11.2, yAxis: 2.03, zAxis: 15.1, date: Date(), timer: 15.3)
        gyrodata.append(gyro)
    }

}

extension MainTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return gyrodata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GyroDataCell.identifier, for: indexPath) as? GyroDataCell else {
            return GyroDataCell()
        }
        
        cell.configureCell(with: gyrodata[indexPath.row])
        return cell
    }
}

extension MainTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath)
    -> UISwipeActionsConfiguration? {
    
        let play = UIContextualAction(style: .normal, title: "Play") { action, view, completionHandler in
            self.navigationController?.pushViewController(ReplayViewController(), animated: true)
            print("재생")
        }
        
        play.backgroundColor = .systemGreen
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { action, view, completionHandler in
            print("삭제")
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    
        return UISwipeActionsConfiguration(actions: [delete, play])
    }
}
