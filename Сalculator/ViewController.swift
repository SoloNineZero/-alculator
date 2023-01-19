//
//  ViewController.swift
//  Сalculator
//
//  Created by Игорь Солодянкин on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen: Double = 0
    var firstNumber: Double = 0
    var operation = 0
    var mathSign: Bool = false
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            resultLabel.text = String(sender.tag)
            mathSign = false
        } else {
            resultLabel.text! += String(sender.tag)
        }
        
        numberFromScreen = Double(resultLabel.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if resultLabel.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNumber = Double(resultLabel.text!)!
            if sender.tag == 11 {
                resultLabel.text = "/"
            } else if sender.tag == 12 {
                resultLabel.text = "x"
            } else if sender.tag == 13 {
                resultLabel.text = "-"
            } else if sender.tag == 14 {
                resultLabel.text = "+"
            } else if sender.tag == 15 {
                resultLabel.text = "="
            }
            operation = sender.tag
            mathSign = true
        } else if sender.tag == 15 {
            if operation == 11 {
                resultLabel.text = String(firstNumber / numberFromScreen)
            } else if operation == 12 {
                resultLabel.text = String(firstNumber * numberFromScreen)
            } else if operation == 13 {
                resultLabel.text = String(firstNumber - numberFromScreen)
            } else if operation == 14 {
                resultLabel.text = String(firstNumber + numberFromScreen)
            }
        } else if sender.tag == 10 {
            resultLabel.text = ""
            firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

