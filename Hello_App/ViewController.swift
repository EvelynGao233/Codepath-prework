//
//  ViewController.swift
//  Hello_App
//
//  Created by Evelyn GAO on 7/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stringButton: UIButton!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var TextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
              
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))


        view.addGestureRecognizer(tap)
    }
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func ChangeColor(_ sender: Any) {
        print("hello")
        TextLabel.textColor = UIColor.orange
        
    }
    
    @IBAction func ChangeString(_ sender: Any) {
        let input = TextField.text
        if input == ""{
            TextLabel.text = "Goodbye👋"
        }else{
            TextLabel.text = input
        }
    }
}

