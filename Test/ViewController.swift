//
//  ViewController.swift
//  Test
//
//  Created by 박진수 on 08/04/2019.
//  Copyright © 2019 박진수. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    let birthDayPerson = Person(name: "jinsu", age: 15)
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "HH:mm"
//
//        if let date = dateFormatter.date(from: "12:00"), let to = dateFormatter.date(from: "13:00") {
//            let a = to.timeIntervalSince(date)
//
//            print(a)
//        }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let start = formatter.date(from: "2019-05-23T09:38:40+0900")
        
        let da = formatter.string(from: Date())
        let interval = Date().timeIntervalSince(start!)
        let minute = floor(interval / 60)
        print("\(minute)!!")
        print("\(da)!!")
        
        wishHappyBirthday(to: birthDayPerson)
        
    }

    @IBAction func btn(_ sender: Any) {
        view1.removeFromSuperview()
        view2.removeFromSuperview()
        let view = UIView(frame: CGRect(x: 87, y: 220, width: 240, height: 128))
        view.backgroundColor = UIColor.blue
        super.view.addSubview(view)
    }
    
    func wishHappyBirthday(to celebrator: Named & Aged) {
        print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
    }
    
    
    
}
protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int


}

