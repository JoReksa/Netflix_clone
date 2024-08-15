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
        Labels.text = "Hello World"
        return Labels
    }()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(labels)
        
        labels.snp.makeConstraints{
            $0.height.equalTo(350)
            $0.width.equalTo(550)
            $0.center.equalToSuperview()
        }
    }
    
}
