//
//  HomeController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 14/08/24.
//

import Foundation
import UIKit
import SnapKit


class HomeViewController: BaseViewController {
    
    private lazy var homeTableView: UITableView = {
        let tableView = UITableView ()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .none
    
        return tableView
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupUI()
    }
    

    
    private func setupUI(){
        self.view.backgroundColor = .systemYellow
        self.view.addSubview(homeTableView)
        homeTableView.frame = view.bounds
    }
    
    

}


extension HomeViewController :UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier:"cell" , for:  indexPath) as _ else{
//            
//        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "cek"
        return cell
    }
    
    
}
