//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 김민호 on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func wind(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
}

