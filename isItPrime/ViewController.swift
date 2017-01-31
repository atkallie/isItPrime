//
//  ViewController.swift
//  isItPrime
//
//  Created by Ahmed T Khalil on 11/22/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var num: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func goButton(_ sender: Any) {
        if let num2 = Int(num.text!){
            if num2==2{
                answer.text="Prime"
            }else if num2==1{
                answer.text="Neither"
            }else if num2<=0{
                answer.text="Enter a Number >0!"
            }else{
                for i in 2...(num2-1){
                    if num2%i==0 {
                        answer.text="Not Prime"
                        break
                    }else{
                        answer.text="Prime"
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

