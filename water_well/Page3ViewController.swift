//
//  Page3ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/14.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController {

    @IBOutlet weak var mystackview: UIStackView!
    @IBOutlet weak var phoneTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        mystackview.addBroader(color: .white, bordercolor: .gray)
        
        phoneTF.layer.borderColor = UIColor.white.cgColor
        phoneTF.layer.borderWidth = 2

        
    }
    
    


}

extension UIStackView {

    func addBroader(color: UIColor, bordercolor: UIColor) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        subview.layer.cornerRadius = 7
        
        subview.layer.borderColor = bordercolor.cgColor
        subview.layer.borderWidth = 0.5
        
        insertSubview(subview, at: 0)
    }

}
