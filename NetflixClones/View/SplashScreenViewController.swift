//
//  SplashScreenViewController.swift
//  NetflixClones
//
//  Created by Joda Reksa on 14/08/24.
//
import UIKit
import Lottie
import SnapKit

class SplashScreenViewController: UIViewController {
    
    private var animationView: LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the animation view
        setupLottieAnimation()
        
        // Start the animation task
        startAnimationTask()
    }
    
    
    //MARK: -
    private func setupLottieAnimation() {
        if let jsonURL = jsonURL , let animate = LottieAnimation.filepath(jsonURL.path){
            animationView = LottieAnimationView(animation: animate)
            animationView?.contentMode = .scaleAspectFit
            animationView?.loopMode = .playOnce
            animationView?.frame = view.bounds
            animationView?.translatesAutoresizingMaskIntoConstraints = false
            
            if let animationView = animationView {
                self.view.addSubview(animationView)
                animationView.snp.makeConstraints{
                    $0.height.equalTo(350)
                    $0.width.equalTo(550)
                    $0.center.equalToSuperview()
                }
            }
        }
        
    }
    
    
    private func startAnimationTask() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15 ){
            self.animationView?.play(fromProgress: 0, toProgress: 1, loopMode: .playOnce)
        }
    }

    
    private var jsonURL: URL? {
        if let path = Bundle.main.path(forResource: "Logo", ofType:"json"){
            return URL(fileURLWithPath: path)
        }
        return nil
    }
}
