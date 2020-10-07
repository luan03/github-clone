//
//  Follower.swift
//  GHFollowers
//
//  Created by Luan Fagundes on 06/10/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import Foundation

struct Follower: Codable {
    // the properties should match the object from the api
    // snake case is converted automatically to camel case
    // do not worry crazy edge cases
    var login: String
    var avatarUrl: String


}
