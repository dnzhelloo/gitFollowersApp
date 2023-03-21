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
        window?.rootViewController = configureTabBar()
        window?.makeKeyAndVisible()

        configureNavigationBar()
        
    }
    
    //MARK: create searchNC -> navigation controller
    func createSearchNC()->UINavigationController{
        let searchVC = SearchVC()
        
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    //MARK: create favoriteNC
    func createaFavoriteNC()->UINavigationController{
        let favoriteListVC = FavoriteListVC()
        
        favoriteListVC.title = "Favorites"
        favoriteListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoriteListVC)
    }
    
    //MARK: configureTabbar
    func configureTabBar()-> UITabBarController{
        let tabbar = UITabBarController()
        let configure = UITabBar.appearance()
        
        configure.tintColor = .systemGreen
        configure.isTranslucent = false
        
        tabbar.viewControllers = [createSearchNC(),createaFavoriteNC()]
        
        return tabbar
    }
    
    //MARK: configure NavigationBar
    func configureNavigationBar(){
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
}

