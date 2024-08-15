//
//  ContentViewController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 15/08/24.
//


import UIKit

class ContentViewController: UIViewController {
    var appData: AppData = AppData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupView()
    }
    
    private func setupView() {
        if !appData.isSplashFinish {
            let splashScreen = SplashScreenViewController()
            addChild(splashScreen)
            splashScreen.view.frame = view.bounds
            view.addSubview(splashScreen.view)
            splashScreen.didMove(toParent: self)
            

            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
                self?.appData.isSplashFinish = true
                self?.removeSplashScreen(splashScreen)
            }
        }
    }
    
    private func removeSplashScreen(_ splashScreen: UIViewController) {
        splashScreen.willMove(toParent: nil)
        splashScreen.view.removeFromSuperview()
        splashScreen.removeFromParent()
    }
}
