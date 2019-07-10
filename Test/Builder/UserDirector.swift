//
//  UserDirector.swift
//  Test
//
//  Created by 박진수 on 10/07/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import UIKit

class UserDirector: NSObject {
    func createUser(builder: UserBuilder) -> User {
        let userBuilder = builder.buildNewUser()
            .buildName(name: "jinsu")
            .buildPwd(pwd: "123")
            .buildEmail(email: "jinsu3758@naver.com")
        return userBuilder.user
    }
    
    func createAdminUser(builder: UserBuilder) -> User {
        let userBuilder = builder.buildNewUser()
            .buildName(name: "admin")
            .buildPwd(pwd: "admin")
            .buildEmail(email: "admin@naver.com")
        return userBuilder.user
    }
}
