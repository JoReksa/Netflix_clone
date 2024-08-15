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
    
    //MARK: - BOTTOM TAB
    private func setupBar (){
        
        self.view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: DownloadViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        vc3.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3], animated:true)
        
    }
    

}
