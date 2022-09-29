//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 김민호 on 2022/09/24.
//

import UIKit
class SecondViewController: UIViewController {
    
    @IBAction func Back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func Back2(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
