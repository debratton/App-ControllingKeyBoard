//
//  ViewController.swift
//  ControllingKeyBoard
//
//  Created by David E Bratton on 10/20/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var enterText: UIStackView!
    
    // TWO WAYS TO HIDE KEYBOARD
    // 1. Create extension after ending { class tag hideKeyboard and you must call on viewDidLoad
    // 2. Which appears to be a better way, create function touchesBegan
    
    // ADD ABILITY TO HIDE KEYBOARD WHEN YOU CLICK RETURN
    // 1. At top, you need to add UITextFieldDelegate as a protocol
    // 2. Add function textFieldShouldReturn
    // 3. Have to drag the text field to yellow circle on top of VC and set delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.hideKeyboard()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

// Dismiss the keyboard so you can hit the Add button
//extension UIViewController
//{
//    func hideKeyboard()
//    {
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
//            target: self,
//            action: #selector(UIViewController.dismissKeyboard))
//
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func dismissKeyboard()
//    {
//        view.endEditing(true)
//    }
//}
