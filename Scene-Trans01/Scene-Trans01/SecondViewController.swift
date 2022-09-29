//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 김민호 on 2022/09/21.
//

import UIKit
class SecondViewController: UIViewController {
        
    @IBAction func back(_ sender: Any){
        self.presentingViewController?.dismiss(animated: true)
    }
}
