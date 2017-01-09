//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Sedona Falco on 9/28/16.
//  Copyright © 2016 Sedona Falco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var number = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func fizzBuzz (_ number:Int) -> (String, UIColor) {
        if number % 15 == 0{
        return ("Fizz\nBuzz", UIColor.orange)
    }
    
    else if number % 3 == 0 {
        return ("Fizz", UIColor.green)
    }
    else if number % 5 == 0 {
            return ("Buzz", UIColor.blue)
    }
        else {
            return (String (number), UIColor.black)
    }




}




@IBAction func onTappedViewController(_ sender: AnyObject) {
    number += 1
    let myTuple = fizzBuzz(number)
    numberLabel.text = myTuple.0
    view.backgroundColor = myTuple.1
    
}
@IBAction func onLongPressViewController(_ sender: AnyObject) {
    number = 0
    numberLabel.text = ""
    view.backgroundColor = UIColor.black
    
}




}

