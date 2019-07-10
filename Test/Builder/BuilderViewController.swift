//
//  BuilderViewController.swift
//  Test
//
//  Created by 박진수 on 10/07/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import UIKit

class BuilderViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var confirmLabel: UILabel!
    
    private let userBuilder: UserConcreteBuilder = UserConcreteBuilder()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func joinUser(_ sender: Any) {
        let userDirector: UserDirector = UserDirector()
        let jinsu: User = userDirector.createUser(builder: userBuilder)
        
        userNameLabel.text = jinsu.name
        confirmLabel.text = "가입 성공"
    }
    
}
