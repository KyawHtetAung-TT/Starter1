//
//  ViewController.swift
//  Starter1
//
//  Created by kyaw htet aung on 2021/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBAction func didTapButton(_ sender: Any) {
        
        labelName.text = textFieldName.text
        textFieldName.text = ""
        
    }
    
    @IBOutlet weak var imageProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let tapGestureForImage = UITapGestureRecognizer(target: self, action: #selector(onTapImage))
        imageProfile.addGestureRecognizer(tapGestureForImage)
        imageProfile.isUserInteractionEnabled = true
    }
    @objc func onTapImage(){
        textFieldName.text = "Kyaw Htet Aung"
    }
}

