//
//  ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/13.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gradientLayer:CAGradientLayer!
    
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
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }


}

