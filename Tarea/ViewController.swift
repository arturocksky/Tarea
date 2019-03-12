//
//  ViewController.swift
//  Tarea
//
//  Created by Arturo on 3/11/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func shakeTextField(textField: UITextField)
    {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: userTextField.center.x - 10, y: userTextField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: userTextField.center.x + 10, y: userTextField.center.y))
        userTextField.layer.add(animation, forKey: "position")
        
        
        animation.fromValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x - 10, y: passwordTextField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x + 10, y: passwordTextField.center.y))
        passwordTextField.layer.add(animation, forKey: "position")
        
        userTextField.attributedPlaceholder = NSAttributedString(string: textField.placeholder ?? "", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
        
    }
    
    
    
    
    func shakesTextField(textField: UITextField)
    {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x - 10, y: passwordTextField.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: passwordTextField.center.x + 10, y: passwordTextField.center.y))
        passwordTextField.layer.add(animation, forKey: "position")

        passwordTextField.attributedPlaceholder = NSAttributedString(string: textField.placeholder ?? "", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
    }
    
    
   
        
  
    
    @IBAction func login(_ sender: Any) {
        
        shakeTextField(textField: userTextField)
        shakesTextField(textField: passwordTextField)
        
        //userTextField.backgroundColor = UIColor.red
        //passwordTextField.backgroundColor = UIColor.red
        
        let alert = UIAlertController(title: "Log in", message: "Tu usuario o contrasena estan mal", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))

        
        self.present(alert, animated: true)
        
        }
    
}

