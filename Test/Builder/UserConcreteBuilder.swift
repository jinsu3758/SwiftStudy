//
//  UserConcreteBuilder.swift
//  Test
//
//  Created by 박진수 on 10/07/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import UIKit

//이 빌더를 여러개 만들 수 있어서 여러 타입의 객체를 만들 수 있음
class UserConcreteBuilder: UserBuilder {
    var user: User = User()
    
    // 새로운 객체 생성 왜 필요할까...?
    func buildNewUser() -> UserBuilder {
        user = User()
        return self
    }
    
    func buildName(name: String) -> UserBuilder {
        user.name = name
        return self
    }
    
    func buildPwd(pwd: String) -> UserBuilder {
        user.pwd = pwd
        return self
    }
    
    func buildEmail(email: String) -> UserBuilder {
        user.email = email
        return self
    }
    
    
}
