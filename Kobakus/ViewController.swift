//
//  ViewController.swift
//  Kobakus
//
//  Created by Burak Kelleroğlu on 22.07.2018.
//  Copyright © 2018 Burak Kelleroğlu. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var denemeField: SkyFloatingLabelTextField!
    
    var textFields: [SkyFloatingLabelTextField] = []
    
    let lightGreyColor: UIColor = UIColor(red: 197 / 255, green: 205 / 255, blue: 205 / 255, alpha: 1.0)
    let darkGreyColor: UIColor = UIColor(red: 52 / 255, green: 42 / 255, blue: 61 / 255, alpha: 1.0)
    let overcastBlueColor: UIColor = UIColor(red: 0, green: 187 / 255, blue: 204 / 255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for textField in textFields {
            textField.delegate = self
        }
        setupUser()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupUser() {
        let textFieldFrame = CGRect(x: 150, y: 10, width: 120, height: 45)

        let textfield = SkyFloatingLabelTextFieldWithIcon(frame: textFieldFrame)
        textfield.placeholder = "Arrival"
        textfield.title = "Flying to"
        textfield.tintColor = overcastBlueColor
        textfield.selectedTitleColor = overcastBlueColor
        textfield.selectedLineColor = overcastBlueColor
        
        applySkyscannerTheme(textField: textfield)
    }
    func applySkyscannerTheme(textField: SkyFloatingLabelTextField) {
        
        textField.tintColor = overcastBlueColor
        
        textField.textColor = darkGreyColor
        textField.lineColor = lightGreyColor
        
        textField.selectedTitleColor = overcastBlueColor
        textField.selectedLineColor = overcastBlueColor
        
        // Set custom fonts for the title, placeholder and textfield labels
        textField.titleLabel.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 12)
        textField.placeholderFont = UIFont(name: "AppleSDGothicNeo-Light", size: 18)
        textField.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
    }

}

