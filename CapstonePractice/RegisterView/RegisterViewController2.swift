//
//  RegisterViewController.swift
//  CapstonePractice
//
//  Created by Yundong Lee on 2022/05/20.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

class RegisterViewController: UIViewController {
    
    let mainView = BackJoonInfoView()
    let disposeBag = DisposeBag()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.confirmButton.rx
            .tap.bind { _ in
                if let bck = self.mainView.backJoonIdTextField.text, let name = self.mainView.nickNameTextField.text {
                    ApiService.meInit(bojId: bck, name: name)
                }else {
                    print("not good")
                }
                
            }.disposed(by: disposeBag)
        
        
        mainView.passButton.rx
            .tap.bind { _ in
                print("paass")
            }.disposed(by: disposeBag)
    }
    
}
