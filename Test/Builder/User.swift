//
//  User.swift
//  Test
//
//  Created by 박진수 on 10/07/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import UIKit

class User: NSObject {
    var uuid: String
    var id: String
    var pwd: String
    var name: String
    var email: String
    
    override init() {
        uuid = ""
        id = ""
        pwd = ""
        name = ""
        email = ""
    }
}
