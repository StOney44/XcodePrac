//
//  NewSegue.swift
//  Scene_CustomSegue
//
//  Created by 김민호 on 2022/09/29.
//

import UIKit

class NewSegue: UIStoryboardSegue{
    override func perform() {
        //세그웨이의 출발지 뷰 컨트롤러
        let srcUVC = self.source
        //세그웨이의 목적지 뷰 컨트롤러
        let destUVC = self.destination
        // fromView에서 toView로 뷰를 전환한다
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
