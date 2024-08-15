//
//  HomeController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 14/08/24.
//

import Foundation
import UIKit
import SnapKit
class HomeViewController: UIViewController {
    
    private let labels: UILabel = {
        let Labels = UILabel()
        Labels.textColor = .white
        Labels.textAlignment = .center
        Labels.font = .systemFont(ofSize: 26 , weight: .bold)
        Labels.text = "For You"
        Labels.textAlignment = .left
        Labels.sizeToFit()
        return Labels
    }()
    

    override func viewDidLoad(){
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func setupUI(){
        self.view.backgroundColor = .systemYellow
        let vc1Image = UIImage(systemName:"magnifyingglass")
        let vc2Image = UIImage(systemName:"person.circle")

        let leftItem = UIBarButtonItem(customView: labels)
        navigationItem.leftBarButtonItem = leftItem
        
        let search = UIBarButtonItem(image: vc1Image, style: .plain, target: self, action: #selector(searchButton))
        let profile = UIBarButtonItem(image: vc2Image, style: .plain, target: self, action: #selector(profileButton))
        search.tintColor = .label
        profile.tintColor = .label
        navigationItem.rightBarButtonItems = [profile, search]

    }
    @objc private func searchButton () {
        
    }
    
    @objc private func profileButton () {
        
    }
}
