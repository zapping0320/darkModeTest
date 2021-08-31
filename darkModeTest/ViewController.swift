//
//  ViewController.swift
//  darkModeTest
//
//  Created by DD Dev on 2021/04/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentMode: UILabel!
    
    @IBOutlet weak var mainThemeView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var subColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.descriptionLabel.text = "라이트모드일 때는 메인 테마는 오렌지,이미지는 빨강이 나오고 \n 다크모드일 때는 메인테마는 노랑 이미지는 파랑이 나온다."
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        self.applyCurrentMode()
        
        self.mainThemeView.backgroundColor = ColorHelper.getMainThemeColor()
        
        subColorView.backgroundColor = UIColor(named: "bgColor")
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        self.applyCurrentMode()
    }
    
    func applyCurrentMode() {
        if #available(iOS 13, *) {
            if self.view.traitCollection.userInterfaceStyle == .dark {
                self.currentMode.text = "다크 모드입니다."
                
            } else {
                // Return color for Light Mode
                self.currentMode.text = "라이트 모드입니다."
            }

        } else {
            // Return fallback color for iOS 12 and lower
            self.currentMode.text = "ios 13 미만 버전이라 다크 모드를 지원하지 않습니다."
        }
    }
}

