//
//  Page4ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/17.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page4ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTFStack: UIStackView!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTFStack: UIStackView!
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneTFStack: UIStackView!
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var paswordTFStack: UIStackView!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var ensureLabel: UILabel!
    @IBOutlet weak var ensureTFStack: UIStackView!
    @IBOutlet weak var ensureTF: UITextField!
    
    @IBOutlet weak var loginStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //輸入欄位設定
        setFormat(label: nameLabel, stack: nameTFStack, textfield: nameTF)
        setFormat(label: emailLabel, stack: emailTFStack, textfield: emailTF)
        setFormat(label: phoneLabel, stack: phoneTFStack, textfield: phoneTF)
        setFormat(label: passwordLabel, stack: paswordTFStack, textfield: passwordTF)
        setFormat(label: ensureLabel, stack: ensureTFStack, textfield: ensureTF)
        
        //確認按鈕
        let blueColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        loginStack.makeRectangle(color: blueColor)

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameTF.addTarget(self, action: #selector(textfieldDidChange(sender:)
            ), for: .editingDidEndOnExit)
        emailTF.addTarget(self, action: #selector(textfieldDidChange(sender:)
        ), for: .editingDidEndOnExit)
        phoneTF.addTarget(self, action: #selector(textfieldDidChange(sender:)
        ), for: .editingDidEndOnExit)
        passwordTF.addTarget(self, action: #selector(textfieldDidChange(sender:)
        ), for: .editingDidEndOnExit)
        
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    
    func setFormat(label: UILabel, stack: UIStackView, textfield: UITextField){
        stack.addBroader(color: .white, bordercolor: .gray, TF: textfield)
        textfield.layer.borderColor = UIColor.white.cgColor
        textfield.layer.borderWidth = 2
        label.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)
    }
    
    @objc func textfieldDidChange(sender: UITextField){
        switch sender {
        case nameTF:
            emailTF.becomeFirstResponder()
        
        case emailTF:
            phoneTF.becomeFirstResponder()
        
        case phoneTF:
            passwordTF.becomeFirstResponder()
            
        case passwordTF:
            ensureTF.becomeFirstResponder()
        
        default:
            break
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
}

