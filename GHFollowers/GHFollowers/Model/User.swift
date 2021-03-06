//
//  User.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 06/10/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var follower: Int
    var createdAt: String
}
