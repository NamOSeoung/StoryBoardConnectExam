//
//  ViewController.swift
//  StoryBoardConnectExam
//
//  Created by 남오승 on 2020/03/27.
//  Copyright © 2020 남오승. All rights reserved.
//

import UIKit

/*
 
 스위프트에는 4가지 정도의 화면 전환 방식이 있는데

  

 1. 뷰를 교체하는 방식
 2. 뷰컨트롤러를 직접 호출하는 방식
 3. 네비게이션을 이용한 방식
 4. 세그웨이를 이용한 방식
 
 ** 1번은 잘 사용하지 않는다.
    : 하나의 뷰 컨트롤러에서 여러개의 뷰를 관리한다는 것은 MVC패던을 거스르기때문에 잘 사용하지 않는다고 함.
 
 
 VC1 과 VC2가 있다고 가정하고 VC1에서 VC2로 화면 전환을 한다.
 
 여기서 기본적인 개념은 VC1위에 VC2가 생기고 VC2 에서 VC으로 돌아갈 땐 띄워진 VC2를 제거한다고 보면된다.
 
 ex)depth1. 로그인 화면 -> 회원가입 화면
    depth2. 회원가입화면 -> 로그인 화면 ==> 이때 회원가입 화면을 제거(dismiss)하면 로그인화면으로 돌아감.
 
 
 참고 url : https://lazyowl.tistory.com/43
 */


//*** 스플래시 적용하는데 캐시문제가 있을 수 있으니 적용 후 앱 삭제 후 다시 적용해보면 확인이 가능하다.


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //mainTabWrap
    }


    @IBAction func changeView(_ sender: UIButton) {
              guard let nextVC = self.storyboard?.instantiateViewController(identifier: "signActivity") else { //storyboardId가 signActivity인 스토리 보드로 화면 전환
                   return
               }
               self.present(nextVC, animated: true)
    }
    
    @IBAction func goMain(_ sender: UIButton) {
        let RepplerMainStoryBoard: UIStoryboard = UIStoryboard.init(name: "RipplerMain", bundle: nil) //RipplerMainStoryBoard 객체 생성
        let repplerVC = RepplerMainStoryBoard.instantiateViewController(identifier: "mainTabWrap") //우편함 피드, 관심사 피드 탭을 감싸고있는 tapWrap Storyboard 에 대한 부분 호출
        self.present(repplerVC, animated: true)
        
    }
}

