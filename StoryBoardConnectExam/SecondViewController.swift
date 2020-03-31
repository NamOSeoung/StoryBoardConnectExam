//
//  SecondViewController.swift
//  StoryBoardConnectExam
//
//  Created by 남오승 on 2020/03/31.
//  Copyright © 2020 남오승. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true) //현재 자신의 페이지를 dismiss해주면 다시 로그인페이지로 돌아간다.
       
        
    }
}
