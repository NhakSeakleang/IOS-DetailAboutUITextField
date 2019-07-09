//
//  ViewController.swift
//  IOSTextField
//
//  Created by GIS on 7/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        mainView.delegate = self.delegate
        
    }

    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
    }
    
    func delegate() {
        
        mainView.textField.delegate = self
        
    }
    
    // UITextField Delegates
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called \"\(textField.text!)\"")
        return true;
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextField did begin editing method called \"\(textField.text!)\"")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("While entering the characters this method gets called \"\(textField.text!)\"")
        return true;
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("TextField should clear method called \"\(textField.text!)\"")
        return true;
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called \"\(textField.text!)\"")
        textField.resignFirstResponder()
        return true;
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should end editing method called \"\(textField.text!)\"")
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextField did end editing method called \"\(textField.text!)\"")
    }

}

