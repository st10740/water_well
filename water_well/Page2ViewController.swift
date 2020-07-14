//
//  Page2ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/14.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {

    
    var line = UIProgressView()
    let WIDTH = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: gradient view
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.init(displayP3Red: 21/255, green: 59/255, blue: 217/255, alpha: 1).cgColor, UIColor.init(displayP3Red: 60/255, green: 111/255, blue: 255/255, alpha: 1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        //gradientLayer.locations = [0, 0.3]
        view.layer.insertSublayer(gradientLayer, at: 0)
        

        
        line = UIProgressView(progressViewStyle: .default)
        //line.frame.size = CGSize(width: 160, height:200)
        line.center = CGPoint(x: WIDTH / 2,
                              y: 400)
        line.progress = 0.5
        line.progressTintColor = .blue
        line.trackTintColor = .white
        
        //設定progressview的長寬
        let transform : CGAffineTransform = CGAffineTransform(scaleX: 1.2, y: 3.0)
        line.transform = transform
        
        //設定圓角
        line.clipsToBounds = true
        line.layer.cornerRadius = 5
        
        //設定邊框
        line.layer.borderColor = UIColor.white.cgColor
        line.layer.borderWidth = 0.3
        
        view.addSubview(line)
        
        
        
    }


}
