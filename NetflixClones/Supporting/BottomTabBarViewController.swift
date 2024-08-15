//
//  BottomTabBarViewController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 15/08/24.
//

import UIKit
import SnapKit
class BottomTabBarViewController: UITabBarController {


    override func viewDidLoad() {
        super.viewDidLoad()
        setupBar()
    }

    //MARK: - BOTTOM TAB
    private func setupBar (){
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: DownloadViewController())

        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        vc3.tabBarItem.image = UIImage(systemName: "arrow.down.circle")

        vc1.title = "Home"
        vc2.title = "New & Hot"
        vc3.title = "Download"

        tabBar.tintColor = .label

        setViewControllers([vc1,vc2,vc3], animated:true)

    }


}

