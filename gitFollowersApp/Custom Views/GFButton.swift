//
//  GFButton.swift
//  gitFollowersApp
//
//  Created by deniz on 20.03.2023.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame) //apple default settings
        //custom code ↴
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor:UIColor,title:String) {
        super.init(frame: .zero) // when we do first inizaliter we don't need to autolayout cause we will do it in searchVC so we just will give height,width,top etc..
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure(){
        //button view
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline) //dynamic type
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
