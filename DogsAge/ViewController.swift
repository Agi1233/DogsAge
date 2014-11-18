//
//  ViewController.swift
//  DogsAge
//
//  Created by Agnieszka Purc on 14.11.2014.
//  Copyright (c) 2014 Agnieszka Purc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var ageOfDogLabel: UILabel!
    
    
    @IBOutlet weak var humanYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func ConvertToDogYersButtonPressed(sender: UIButton) {
        
        let numberFromHumanYearsTextField = humanYearsTextField.text.toInt()!
        
        let ageConstant = 7
        
        
        humanYearsTextField.resignFirstResponder()
        
        ageOfDogLabel.hidden = false
        
        ageOfDogLabel.text = "\(numberFromHumanYearsTextField * ageConstant)" + " Dog Years"
        
        
    }
    
    
    @IBAction func convertToRealDogYears(sender: UIButton) {
        
        var stringFromTextFiel = humanYearsTextField.text
        var intFromTextField = stringFromTextFiel.toInt()!
        var doubleStringFromTextField = Double((stringFromTextFiel as NSString).doubleValue)
        
        humanYearsTextField.resignFirstResponder()
        ageOfDogLabel.hidden = false
        
        if doubleStringFromTextField <= 2 {
            ageOfDogLabel.text = "\(doubleStringFromTextField * 10.5)"
            
        }
       
        else if (intFromTextField > 2) {
            
        ageOfDogLabel.text = "\(((intFromTextField - 2) * 4 + 21))"
        
        }

        
    }
        
    
        
        
}



