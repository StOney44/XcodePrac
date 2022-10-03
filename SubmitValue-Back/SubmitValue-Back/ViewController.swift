//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 김민호 on 2022/10/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 값을 화면에 표시하기 위한 아울렛 변수들
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
//    // 값을 직접 전달받을 프로퍼티들
//    var paramEmail: String?
//    var paramUpdate: Bool?
//    var paramaInterval: Double?
    
    // 화면이 표시될 때마다 실행되는 메소드
    override func viewWillAppear(_ animated: Bool) {
//        if let email = paramEmail {
//            resultEmail.text = email
//        }
//        if let update = paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
//        }
//        if let interval = paramaInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
        
//        // AppDelegate 객체의 인스턴스를 가져온다
//        let ad = UIApplication.shared.delegate as? AppDelegate
//
//        if let email = ad?.paramEmail {
//            resultEmail.text = email
//        }
//        if let update = ad?.paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
//        }
//        if let interval = ad?.paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
        
        // UserDefault 객체의 인스턴스를 가져온다
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "자동갱신안함")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
        
    }
}

