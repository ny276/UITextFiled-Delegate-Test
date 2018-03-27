//
//  ViewController.swift
//  UITextFiled Delegate Test 03
//
//  Created by D7703_03 on 2018. 3. 22..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        //UITextFieldDelegate 객체와 viewController 객체와 연결
        text.delegate = self
        
        text.placeholder = "입력 기기"
        text.clearButtonMode = UITextFieldViewMode.whileEditing
        text.borderStyle = UITextBorderStyle.line
    }
    
    @IBAction func btn(_ sender: Any) {
        lbl.text = "Hello " + text.text!
        text.text = ""
        text.resignFirstResponder() // 키패드를 내림
    }
    
    // background의 View를 누르면 키패드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        text.resignFirstResponder()
    }

    // UITextFieldDelegate 메소드 호출
    // called when 'return' key pressed. return NO to ignore.
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.brown
        lbl.backgroundColor = UIColor.white
        text.resignFirstResponder()
        return true
    }
    
}
