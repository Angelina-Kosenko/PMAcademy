//
//  SceneDelegate.swift
//  Task3.HW3
//
//  Created by Ангелина Косенко on 20.12.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
                
                window = UIWindow(frame: windowScene.coordinateSpace.bounds)
                window?.windowScene = windowScene
                window?.makeKeyAndVisible()
        window?.rootViewController = CircusViewController()
        
    }

    
}
