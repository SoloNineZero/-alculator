//
//  ViewController.swift
//  Сalculator
//
//  Created by Игорь Солодянкин on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen: Double = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        resultLabel.text! += String(sender.tag)
        numberFromScreen = Double(resultLabel.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if resultLabel.text != "" {
            switch button {
            case sender.tag == 11:
            case sender.tag == 12:
            case sender.tag == 13:
            case sender.tag == 14:
            default:
                sender.tag == 15
            }
        }
    }
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

