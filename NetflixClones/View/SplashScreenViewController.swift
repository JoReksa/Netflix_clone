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
    private var progress : CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the animation view
        setupLottieAnimation()
        
        // Start the animation task
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            self.startAnimationTask(to: 0.8)
        }
    }
    
    
    //MARK: - Setup animation
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
                    $0.height.equalTo(400)
                    $0.width.equalTo(600)
                    $0.center.equalToSuperview()
                }
            }
        }
        
    }
    
    //MARK: - Start Animation Task
    private func startAnimationTask(to progress: CGFloat) {
            self.progress = progress
            self.animationView?.play(fromProgress: 0, toProgress: progress, loopMode: .playOnce){
                [weak self] finish in
                if finish {
                    self?.animationDidEnd()
                }
            }
        }
    
    //MARK: - End Animation navigate

    private func animationDidEnd(){
        
        let nav = BottomTabBarViewController()
        // fade transition
        guard let window = UIApplication.shared.windows.first else { return }
        // Set up the initial state for the fade transition
        nav.view.alpha = 0
        window.rootViewController = nav
        
        // animated duration
        UIView.animate(withDuration: 0.5, animations: {
            nav.view.alpha = 1
            self.animationView?.alpha = 0
        }){ _ in
            self.animationView?.removeFromSuperview()
            self.navigationController?.pushViewController(nav, animated: true)
        }
    }
    
    //MARK: - URL LOTTIE ANIMATION
    private var jsonURL: URL? {
        if let path = Bundle.main.path(forResource: "Logo", ofType:"json"){
            return URL(fileURLWithPath: path)
        }
        return nil
    }
}

