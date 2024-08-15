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
//        let dxs: CGFloat = 0
//        let dys: CGFloat = -10
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = tabBar.bounds.insetBy(dx: dxs, dy: dys)
        blurEffectView.frame = tabBar.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        tabBar.addSubview(blurEffectView)
        tabBar.sendSubviewToBack(blurEffectView)
        

        
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

