//
//  MainTabBarController.swift
//  Images
//
//  Created by Valery Keplin on 20.10.22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let imagesVC = ImagesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: imagesVC, title: "Images", image: UIImage(systemName: "photo.on.rectangle.angled")!),
            generateNavigationController(rootViewController: ViewController(), title: "Favourites", image: UIImage(systemName: "heart.fill")!)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
