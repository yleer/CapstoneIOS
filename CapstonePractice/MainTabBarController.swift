//
//  MainTabBarController.swift
//  CapstonePractice
//
//  Created by Yundong Lee on 2022/03/25.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainVC = UINavigationController(rootViewController: MainViewController())
        let posterVC = UINavigationController(rootViewController: PostBoardViewController())
        let searchVC = UINavigationController(rootViewController: SeachViewController())
        let myInfoVC = UINavigationController(rootViewController: MyInfoViewController())
        
        
        view.backgroundColor = .white
        
        mainVC.tabBarItem.title = "홈"
        posterVC.tabBarItem.title = "게시판"
        searchVC.tabBarItem.title = "문제 검색"
        myInfoVC.tabBarItem.title = "내 정보"
        
        viewControllers = [mainVC, posterVC, searchVC ,myInfoVC]
        
        self.tabBar.tintColor = .orange
        self.tabBar.unselectedItemTintColor = .white
        
//        mainVC.tabBarItem.selectedImage = UIImage(named: "board")
//        mainVC.tabBarItem.image = UIImage(named: "problems")
    }
}
