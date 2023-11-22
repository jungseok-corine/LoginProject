//
//  ViewController.swift
//  LoginProject
//
//  Created by 오정석 on 19/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextFieldView: UIView = {  //클로져 문으로 뷰에 대한 세팅을 내부에서 하고는 리턴한다.
        //UIView를 생성
        let view = UIView()
        //백그라운드 색 설정
        view.backgroundColor = UIColor.darkGray
        //뷰를 둥글게 만들기
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
    }

    func makeUI(){
        
        //뷰를 화면에 표시
        view.addSubview(emailTextFieldView)
                
        //자동으로 올라가는 오토레이아웃 기능을 꺼주는 코드⭐️⭐️⭐️
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        //왼쪽 레이아웃 잡는 코드
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        //오른쪽 레이아웃 잡는 코드
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        //윗쪽 레이아웃 잡는 코드
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        //높이 레이아웃 잡는 코드
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
    }
    
    
    

}

