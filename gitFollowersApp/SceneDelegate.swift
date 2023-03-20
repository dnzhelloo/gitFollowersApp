//
//  SceneDelegate.swift
//  gitFollowersApp
//
//  Created by deniz on 20.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds) // fill up to fullscreen
        window?.windowScene = windowScene // everywindows has windowScene
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}

