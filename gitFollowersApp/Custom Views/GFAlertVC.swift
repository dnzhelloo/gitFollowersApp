//
//  GFAlertVC.swift
//  gitFollowersApp
//
//  Created by deniz on 22.03.2023.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerView = UIView()
    let alertTitleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let alertBodyLabel = GFBodyLabel(textAlignment: .center)
    let alertButton  = GFButton(backgroundColor: .systemPink, title: "OK")
    
    var alertTitle:String?
    var message:String?
    var btnTitle:String?
    
    let padding:CGFloat = 20
    
    init(title:String?,message:String?,btnTitle:String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.btnTitle = btnTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        
        configureContainerView()
        configureTitleLabel()
        configureAlertBtn()
        messageBodyLabel()
        
    }
    
    //MARK: configure Button
    @objc func dismissVC(){
        dismiss(animated: true)
    }
    
    //MARK: configure Container View
    private func configureContainerView(){
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .systemBackground
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.layer.borderWidth = 2
        containerView.layer.cornerRadius = 16
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 220),
            containerView.widthAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    //MARK: title
    private func configureTitleLabel(){
        containerView.addSubview(alertTitleLabel)
        alertTitleLabel.text = alertTitle ?? "something went wrong"
        
        NSLayoutConstraint.activate([
            alertTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor,constant: padding),
            alertTitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: padding),
            alertTitleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -padding),
            alertTitleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    //MARK: button
    private func configureAlertBtn(){
        containerView.addSubview(alertButton)
        alertButton.setTitle(btnTitle ?? "OK", for: .normal)
        alertButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            alertButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant: -padding),
            alertButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: padding),
            alertButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -padding),
            alertButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    //MARK: messageBodyLABEL
    private func messageBodyLabel(){
        containerView.addSubview(alertBodyLabel)
        alertBodyLabel.text = message ?? "something went wrong in body label"
        alertBodyLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            alertBodyLabel.topAnchor.constraint(equalTo: alertTitleLabel.bottomAnchor,constant: 8),
            alertBodyLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: padding),
            alertBodyLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -padding),
            alertBodyLabel.bottomAnchor.constraint(equalTo: alertButton.topAnchor,constant: -12)
        ])
    }
}
