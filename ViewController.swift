//
//  ViewController.swift
//  JSQ
//
//  Created by 16wb395 on 2018/9/28.
//  Copyright © 2018年 16wb395. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var re = 0
    var judge = 0
    var x1 = 0.0
    var x2 = 0.0
    var x3 = 0.0
    var equal1 = 0
    var number = 0
    var num = 0
    var flag = 0
    var X = ""
    var X1=""
    var X2=""
    var X3=""
    @IBOutlet weak var display: UILabel!
    @IBAction func number1(_ sender: Any) {
            result.text=result.text!+"1"
            flag = 1
    }
    @IBAction func number2(_ sender: Any) {
            result.text=result.text!+"2"
            flag = 1
    }
    @IBAction func number3(_ sender: Any) {
            result.text=result.text!+"3"
            flag = 1
    }
    @IBAction func number4(_ sender: Any) {
            result.text=result.text!+"4"
            flag = 1
    }
    @IBAction func number5(_ sender: Any) {
            result.text=result.text!+"5"
            flag = 1
    }
    @IBAction func number6(_ sender: Any) {
            result.text=result.text!+"6"
            flag = 1
    }
    @IBAction func number7(_ sender: Any) {
            result.text=result.text!+"7"
            flag = 1
    }
    @IBAction func number8(_ sender: Any) {
            result.text=result.text!+"8"
            flag = 1
    }
    @IBAction func number9(_ sender: Any){
            result.text=result.text!+"9"
            flag = 1
    }
    @IBAction func number0(_ sender: Any) {
            result.text=result.text!+"0"
            flag = 1
    }
    @IBAction func dot(_ sender: Any) {
        if(result.text != "")
        {
            if judge == 0
            {
                result.text=result.text!+"."
                judge = 1
            }
        }
        
    }
    @IBAction func clear(_ sender: Any) {
        result.text=""
        judge = 0
        display.text=""
        x1 = 0.0
        x2 = 0.0
        X1 = ""
        X2 = ""
        equal1 = 0
        X = ""
        flag = 0
        num = 0
    }
    
    @IBAction func back(_ sender: Any) {
        if(result.text != "")
        {
            if (result.text?.last == ".") {
                judge = 0
                result.text?.removeLast()
            }
            else
            {
                result.text?.removeLast()
            }
        }
        
    }
    
    @IBAction func percent(_ sender: Any) {
        if(result.text != "")
        {
            let num1 = Double(result.text!)!
            let num2 = num1 * 0.01
            result.text = String(num2)
        }
    }
    @IBAction func add(_ sender: Any) {
        if(flag == 1)
        {
            if(equal1 == 1)
            {
                if(result.text=="")
                {
                    X = "+"
                    display.text=X1 + X
                    judge = 0
                    flag = 0
                    number = 1
                }
                else
                {
                    X = "+"
                    x2=Double(result.text!)!
                    x1 = x1 + x2
                    x2 = 0.0
                    X1 = String(x1)
                    display.text=X1 + X
                    judge = 0
                    result.text=""
                    flag = 0
                    number = 1
                }
            }
            else
            {
                if(num == 0)
                {
                    X = "+"
                    x1=Double(result.text!)!
                    X1=String(x1)
                    display.text=X1+X
                    judge = 0
                    result.text=""
                    flag = 0
                    num = 1
                    number = 1
                }
                else
                {
                    /*X = "+"
                    x2=Double(result.text!)!
                    x1 = x1 + x2
                    x2 = 0.0
                    X1 = String(x1)
                    display.text=X1 + X
                    judge = 0
                    result.text=""
                    flag = 0
                    number = 1*/
                    if(number == 1 && result.text != "")
                    {
                        X = "+"
                        x2=Double(result.text!)!
                        x1 = x1 + x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 1
                        
                    }
                    
                    if(number == 2 && result.text != "")
                    {
                        X = "+"
                        x2=Double(result.text!)!
                        x1 = x1 - x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 1
                    }
                    
                    if(number == 3 && result.text != "")
                    {
                        X = "+"
                        x2=Double(result.text!)!
                        x1 = x1 * x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 1
                    }
                    
                    if(number == 4 && result.text != "")
                    {
                        X = "+"
                        x2=Double(result.text!)!
                        x1 = x1 / x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 1
                    }
                    
                }
            }
            
            
            
        }
        else
        {
            if(number == 1 && result.text == "")
            {
                X = "+"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 1
                
            }
            if(number == 2 && result.text == "")
            {
                X = "+"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 1
                
            }
            if(number == 3 && result.text == "")
            {
                X = "+"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 1
                
            }
            if(number == 4 && result.text == "")
            {
                X = "+"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 1
                
            }
        }
        
    }
    @IBAction func less(_ sender: Any) {
        if(flag == 1)
        {
            if(equal1 == 1)
            {
                if(result.text=="")
                {
                    X = "-"
                    display.text=X1 + X
                    judge = 0
                    flag = 0
                    number = 2
                }
                else
                {
                   
                        X = "-"
                        x2=Double(result.text!)!
                        x1 = x1 - x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 2
                    
                    
                }
            }
            else
            {
                if(num == 0)
                {
                    X = "-"
                    x1=Double(result.text!)!
                    X1=String(x1)
                    display.text=X1+X
                    judge = 0
                    result.text=""
                    flag = 0
                    num = 1
                    number = 2
                }
                else
                {
                    if(display.text=="")
                    {
                        X = "-"
                        x1=Double(result.text!)!
                        X1=String(x1)
                        display.text=X1+X
                        judge = 0
                        result.text=""
                        flag = 0
                        num = 1
                        number = 2
                    }
                    else
                    {
                        /*X = "-"
                        x2=Double(result.text!)!
                        
                        x1 = x1 - x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 2*/
                        if(number == 1 && result.text != "")
                        {
                            X = "-"
                            x2=Double(result.text!)!
                            x1 = x1 + x2
                            x2 = 0.0
                            X1 = String(x1)
                            display.text=X1 + X
                            judge = 0
                            result.text=""
                            flag = 0
                            number = 2
                        }
                        
                        if(number == 2 && result.text != "")
                        {
                            X = "-"
                            x2=Double(result.text!)!
                            x1 = x1 - x2
                            x2 = 0.0
                            X1 = String(x1)
                            display.text=X1 + X
                            judge = 0
                            result.text=""
                            flag = 0
                            number = 2
                        }
                        
                        if(number == 3 && result.text != "")
                        {
                            X = "-"
                            x2=Double(result.text!)!
                            x1 = x1 * x2
                            x2 = 0.0
                            X1 = String(x1)
                            display.text=X1 + X
                            judge = 0
                            result.text=""
                            flag = 0
                            number = 2
                        }
                        
                        if(number == 4 && result.text != "")
                        {
                            X = "-"
                            x2=Double(result.text!)!
                            x1 = x1 / x2
                            x2 = 0.0
                            X1 = String(x1)
                            display.text=X1 + X
                            judge = 0
                            result.text=""
                            flag = 0
                            number = 2
                        }
                        
                    }
                    
                }
            }
        }
        else
        {
            if(number == 1 && result.text == "")
            {
                X = "-"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 2
                
            }
            if(number == 2 && result.text == "")
            {
                X = "-"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 2
                
            }
            if(number == 3 && result.text == "")
            {
                X = "-"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 2
                
            }
            if(number == 4 && result.text == "")
            {
                X = "-"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 2
                
            }
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        if(flag == 1)
        {
            if(equal1 == 1)
            {
                if(result.text=="")
                {
                    X = " x"
                    display.text=X1 + X
                    judge = 0
                    flag = 0
                    number = 3
                }
                else
                {
                    X = " x"
                    x2=Double(result.text!)!
                    x1 = x1 * x2
                    x2 = 0.0
                    X1 = String(x1)
                    display.text=X1 + X
                    judge = 0
                    result.text=""
                    flag = 0
                    number = 3
                }
            }
            else
            {
                if(num == 0)
                {
                    X = " x"
                    x1=Double(result.text!)!
                    X1=String(x1)
                    display.text=X1+X
                    judge = 0
                    result.text=""
                    flag = 0
                    num = 1
                    number = 3
                }
                else
                {
                    /*X = "+"
                     x2=Double(result.text!)!
                     x1 = x1 + x2
                     x2 = 0.0
                     X1 = String(x1)
                     display.text=X1 + X
                     judge = 0
                     result.text=""
                     flag = 0
                     number = 1*/
                    if(number == 1 && result.text != "")
                    {
                        X = " x"
                        x2=Double(result.text!)!
                        x1 = x1 + x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 3
                        
                    }
                    
                    if(number == 2 && result.text != "")
                    {
                        X = " x"
                        x2=Double(result.text!)!
                        x1 = x1 - x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 3
                    }
                    
                    if(number == 3 && result.text != "")
                    {
                        X = " x"
                        x2=Double(result.text!)!
                        x1 = x1 * x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 3
                    }
                    
                    if(number == 4 && result.text != "")
                    {
                        X = " x"
                        x2=Double(result.text!)!
                        x1 = x1 / x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 3
                    }
                    
                }
            }
            
            
            
        }
        else
        {
            if(number == 1 && result.text == "")
            {
                X = " x"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 3
                
            }
            if(number == 2 && result.text == "")
            {
                X = " x"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 3
                
            }
            if(number == 3 && result.text == "")
            {
                X = " x"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 3
                
            }
            if(number == 4 && result.text == "")
            {
                X = " x"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 3
                
            }
        }
    }
    
    
    @IBAction func divide(_ sender: Any) {
        if(flag == 1)
        {
            if(equal1 == 1)
            {
                if(result.text=="")
                {
                    X = "÷"
                    display.text=X1 + X
                    judge = 0
                    flag = 0
                    number = 4
                }
                else
                {
                    X = "÷"
                    x2=Double(result.text!)!
                    x1 = x1 / x2
                    x2 = 0.0
                    X1 = String(x1)
                    display.text=X1 + X
                    judge = 0
                    result.text=""
                    flag = 0
                    number = 4
                }
            }
            else
            {
                if(num == 0)
                {
                    X = "÷"
                    x1=Double(result.text!)!
                    X1=String(x1)
                    display.text=X1+X
                    judge = 0
                    result.text=""
                    flag = 0
                    num = 1
                    number = 4
                }
                else
                {
                    /*X = "+"
                     x2=Double(result.text!)!
                     x1 = x1 + x2
                     x2 = 0.0
                     X1 = String(x1)
                     display.text=X1 + X
                     judge = 0
                     result.text=""
                     flag = 0
                     number = 1*/
                    if(number == 1 && result.text != "")
                    {
                        X = "÷"
                        x2=Double(result.text!)!
                        x1 = x1 + x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 4
                        
                    }
                    
                    if(number == 2 && result.text != "")
                    {
                        X = "÷"
                        x2=Double(result.text!)!
                        x1 = x1 - x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 4
                    }
                    
                    if(number == 3 && result.text != "")
                    {
                        X = "÷"
                        x2=Double(result.text!)!
                        x1 = x1 * x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 4
                    }
                    
                    if(number == 4 && result.text != "")
                    {
                        X = "÷"
                        x2=Double(result.text!)!
                        x1 = x1 / x2
                        x2 = 0.0
                        X1 = String(x1)
                        display.text=X1 + X
                        judge = 0
                        result.text=""
                        flag = 0
                        number = 4
                    }
                    
                }
            }
            
            
            
        }
        else
        {
            if(number == 1 && result.text == "")
            {
                X = "÷"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 4
                
            }
            if(number == 2 && result.text == "")
            {
                X = "÷"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 4
                
            }
            if(number == 3 && result.text == "")
            {
                X = "÷"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 4
                
            }
            if(number == 4 && result.text == "")
            {
                X = "÷"
                display.text=X1 + X
                judge = 0
                result.text=""
                flag = 0
                number = 4
                
            }
        }
        
    }
    @IBAction func equal(_ sender: Any) {
        if(number == 1)
        {
            if(result.text != "")
            {
                x2=Double(result.text!)!
                x1=x1+x2
                x2=0.0
                X1=String(x1)
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            else
            {
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            
        }
        if(number == 2)
        {
            if(result.text != "")
            {
                x2=Double(result.text!)!
                x1=x1-x2
                x2=0.0
                X1=String(x1)
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            else
            {
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            
        }
        if(number == 3)
        {
            if(result.text != "")
            {
                x2=Double(result.text!)!
                x1=x1*x2
                x2=0.0
                X1=String(x1)
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            else
            {
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
        }
        if(number == 4)
        {
            if(result.text != "")
            {
                x2=Double(result.text!)!
                x1=x1/x2
                x2=0.0
                X1=String(x1)
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            else
            {
                display.text=String(format:"%.10lf",x1)
                result.text=""
                flag = 1
                judge = 0
                number = 0
                equal1 = 1
                X = ""
            }
            
        }
      
        while (display.text?.last == "0") {
            display.text?.removeLast()
        }
        if (display.text?.last == ".") {
            display.text?.removeLast()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

