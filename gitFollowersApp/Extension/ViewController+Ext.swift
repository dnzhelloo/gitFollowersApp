//
//  ViewController+Ext.swift
//  gitFollowersApp
//
//  Created by deniz on 22.03.2023.
//

import UIKit

extension UIViewController{
    
    func presentGFAlertOnMainThread(title:String,message:String,buttonTitle:String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, btnTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
