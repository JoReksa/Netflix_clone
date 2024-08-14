//
//  BottomTabBarViewController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 15/08/24.
//

import UIKit

class BottomTabBarViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBar()
    }
    
    private func setupBar (){
        self.view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeController())
        let vc2 = UINavigationController(rootViewController: SettingsController())
        
        
        vc1.title = "Home"
        vc2.title = "Setting"
        
        setViewControllers([vc1,vc2], animated:true)

    }
    
    
}
