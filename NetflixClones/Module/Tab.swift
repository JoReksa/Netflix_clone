//
//  TabViewModel.swift
//  NetflixClones
//
//  Created by Joda Reksa on 15/08/24.
//

import UIKit

enum Tab: String, CaseIterable {
    case home = "Home"
    case new = "up"
    case account = "My Netflix"

    var icon: String {
        switch self {
        case .home:
            return "house.fill"
        case .new:
            return "play.rectangle.on.rectangle"
        case .account:
            return "Profile"
        }
    }
    
    var viewController: UIViewController {
         switch self {
         case .home:
             return HomeViewController()
         case .new:
             return UpcomingViewController()
         case .account:
             return DownloadViewController()
         }
     }
}
