//
//  ViewController.swift
//  SubmitValue
//
//  Created by 김민호 on 2022/10/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 이메일 주소 입력받는 텍스트필드
    @IBOutlet var email: UITextField!
    // 자동 갱신 여부를 설정하는 스위치
    @IBOutlet var isUpdate: UISwitch!
    // 갱신 주기를 설정하는 스테퍼
    @IBOutlet var interval: UIStepper!
    
    //자동갱신 여부를 표시하는 레이블
    @IBOutlet var isUpdateText: UILabel!
    // 갱신주기를 텍스트로 표시하는 레이블
    @IBOutlet var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    

    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    
    /* **** Any 타입의 객체를 각각 UISwitch, UIStepper로 캐스팅하는 경우
     
     @IBAction func onSwitch(_ sender: Any) {
         //옵셔널 캐스팅
         guard let obj = sender as? UISwitch else {
            return
         }
     
         if (obj.isOn == true) {
             self.isUpdateText.text = "갱신함"
         } else {
             self.isUpdateText.text = "갱신하지 않음"
         }
     }
     

     @IBAction func onStepper(_ sender: Any) {
         //강제 캐스팅
         let obj = sender as! UIStepper
     
         let value = Int(obj.value)
         self.intervalText.text = "\(value)분 마다"
     }
     
     
     */
    
    @IBAction func onSubmit(_ sender: Any) {
        // VC2의 인스턴스 생성
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        // 값을 전달하는 과정을 여기에 작성
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
    
}

