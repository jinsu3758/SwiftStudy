//
//  UserBuilder.swift
//  Test
//
//  Created by 박진수 on 10/07/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import Foundation

protocol UserBuilder {
    var user: User { get set }
    
    func buildNewUser() -> UserBuilder
    func buildName(name: String) -> UserBuilder
    func buildPwd(pwd: String) -> UserBuilder
    func buildEmail(email: String) -> UserBuilder
}
