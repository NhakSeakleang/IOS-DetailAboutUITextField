//
//  MainView.swift
//  IOSTextField
//
//  Created by GIS on 7/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var textField: UITextField!
    var delegate: (()->())!
    
    override func layoutSubviews() {
        
        self.backgroundColor = .lightGray
        setUpView()
        delegate()
        
    }
    
    func setUpView() {
        
        textField = UITextField(frame: CGRect(x: 0, y: 0, width: self.frame.width - 50, height: 50))
        // set background color
        textField.backgroundColor = .white
        // set placeholder
        textField.placeholder = "This is placeholder"
        // set text
        textField.text = "This is text"
        // set text alignment
        textField.textAlignment = .center
        // set keyboard type
        textField.keyboardType = .default
        // set auto correction type
        textField.autocorrectionType = .yes
        // set return key type
        textField.returnKeyType = .done
        // set clear button mode
        textField.clearButtonMode = .whileEditing
        // set border style
        textField.borderStyle = .roundedRect
        // set position of the textfield to the center of the screen
        textField.center = self.center
        
        self.addSubview(textField)
        
    }
    
}
