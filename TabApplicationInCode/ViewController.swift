//
//  ViewController.swift
//  TabApplicationInCode
//
//  Created by HMK on 2021/09/30.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = (button.frame.height/2)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        button.center = view.center
    }
    
    @objc func didTapButton() {
        //Create and present tab bar controller
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        tabBarVC.tabBar.tintColor = .orange
//        tabBarVC.tabBar.isTranslucent = false
//        UINavigationBar.appearance().isTranslucent = false
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    
}


class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Home"
        
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Contact"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "Help"
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "About"
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Settings"
    }
}
