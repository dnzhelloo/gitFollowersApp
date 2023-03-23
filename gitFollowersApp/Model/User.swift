//
//  User.swift
//  gitFollowersApp
//
//  Created by deniz on 23.03.2023.
//

import Foundation

struct User:Codable {
    var login:String?
    var avatarUrl:String?
    var name:String?
    var location:String?
    var bio:String?
    var publicRepos:Int?
    var publicGists:Int?
    var htmlUrl:String?
    var followers:Int?
    var following:Int?
    var createdAt:String?
    
}
