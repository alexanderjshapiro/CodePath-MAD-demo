//
//  ViewController.swift
//  CodePathDemo
//
//  Created by Alexander Shapiro on 1/15/20.
//  Copyright © 2020 Alexander Shapiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    var backgroundColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.black
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if (textField.text == "") {
            textLabel.text = "Goodbye 👋."
        } else {
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Alex!"
        textLabel.textColor = UIColor.white
        view.backgroundColor = backgroundColor
    }
    
    
}

