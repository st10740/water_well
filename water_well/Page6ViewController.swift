//
//  Page6ViewController.swift
//  water_well
//
//  Created by Mac_dev3 on 2020/7/21.
//  Copyright © 2020 Mac_dev3. All rights reserved.
//

import UIKit

class Page6ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TF3: UITextField!
    @IBOutlet weak var TF4: UITextField!
    @IBOutlet weak var TF5: UITextField!
    @IBOutlet weak var TF6: UITextField!
    
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var clockLabel: UILabel!
    @IBOutlet weak var vertificationLabel: UILabel!
    @IBOutlet weak var resendButton: UIButton!
    
    @IBOutlet weak var sendTowhat: UILabel!
    
    var receiceVer:String = ""
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TF1.delegate = self
        TF2.delegate = self
        TF3.delegate = self
        TF4.delegate = self
        TF5.delegate = self
        TF6.delegate = self
        
        TF1.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        TF2.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        TF3.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        TF4.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        TF5.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        TF6.textColor = UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1)
        
        buttonStack.makeRectangle(color: UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1))
        nextButton.setTitleColor(.white, for: .normal)
        
        clockLabel.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)
        vertificationLabel.textColor = UIColor.init(displayP3Red: 119/255, green: 119/255, blue: 119/255, alpha: 1)
        resendButton.setTitleColor(UIColor.init(displayP3Red: 33/255, green: 75/255, blue: 228/255, alpha: 1), for: .normal)
        
        sendTowhat.text = receiceVer
        

    }
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        TF1.becomeFirstResponder()
        
        TF1.addTarget(self, action: #selector(textfieldDidChange(textfield:)), for: .editingChanged)
        TF2.addTarget(self, action: #selector(textfieldDidChange(textfield:)), for: .editingChanged)
        TF3.addTarget(self, action: #selector(textfieldDidChange(textfield:)), for: .editingChanged)
        TF4.addTarget(self, action: #selector(textfieldDidChange(textfield:)), for: .editingChanged)
        TF5.addTarget(self, action: #selector(textfieldDidChange(textfield:)), for: .editingChanged)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        return updatedText.count <= 1
        
    }
    
    
    @objc func textfieldDidChange(textfield: UITextField){
        let text = textfield.text
        
        if text?.utf16.count == 1{
            
            switch textfield {
            case TF1:
                TF2.becomeFirstResponder()
            
            case TF2:
                TF3.becomeFirstResponder()
            
            case TF3:
                TF4.becomeFirstResponder()
            
            case TF4:
                TF5.becomeFirstResponder()
            
            case TF5:
                TF6.becomeFirstResponder()
            
            default:
                break
            }
            
        }else{
            
        }
    }

    
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    

}
