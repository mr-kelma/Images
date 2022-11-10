//
//  MainTabBarController.swift
//  Images
//
//  Created by Valery Keplin on 20.10.22.
//

import UIKit
import SwiftUI

class MainTabBarController: UITabBarController {
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        let imagesVC = ImagesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: imagesVC, title: "Images", image: UIImage(systemName: "photo.on.rectangle.angled")!),
            generateNavigationController(rootViewController: ViewController(), title: "Favourites", image: UIImage(systemName: "heart.fill")!)
        ]
    }
    
    //MARK: - Setup views
    
    private func setupView() {
        UINavigationBar.appearance().backgroundColor = .white
        UINavigationBar.appearance().tintColor = .gray
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .white
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
