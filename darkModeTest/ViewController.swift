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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.descriptionLabel.text = "라이트모드일 때는 메인 테마는 오렌지,이미지는 빨강이 나오고 \n 다크모드일 때는 메인테마는 노랑 이미지는 파랑이 나온다."
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}

