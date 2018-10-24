//
//  ViewController.swift
//  JSQ
//
//  Created by 16wb395 on 2018/9/28.
//  Copyright © 2018年 16wb395. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextField!
    
    var re = 0
    var judge = 0
    var x1 = 0.0
    var x2 = 0.0
    var x3 = 0.0
    var add1=0
    var add2=0
    var less1=0
    var less2=0
    var equal1=0
    var X1=""
    var X2=""
    var X3=""
    @IBOutlet weak var display: UILabel!
    @IBAction func number1(_ sender: Any) {
        if re==1{
            result.text="1"
        }else{
            result.text=result.text!+"1"
        }
    }
    @IBAction func number2(_ sender: Any) {
        if re==1{
            result.text="2"
        }else{
            result.text=result.text!+"2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if re==1{
            result.text="3"
        }else{
            result.text=result.text!+"3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if re==1{
            result.text="4"
        }else{
            result.text=result.text!+"4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if re==1{
            result.text="5"
        }else{
            result.text=result.text!+"5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if re==1{
            result.text="6"
        }else{
            result.text=result.text!+"6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if re==1{
            result.text="7"
        }else{
            result.text=result.text!+"7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if re==1{
            result.text="8"
        }else{
            result.text=result.text!+"8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if re==1{
            result.text="9"
        }else{
            result.text=result.text!+"9"
        }
    }
    @IBAction func number0(_ sender: Any) {
        if re==1{
            result.text="0"
        }else{
            result.text=result.text!+"0"
        }
    }
    @IBAction func dot(_ sender: Any) {
        if judge == 0
        {
            result.text=result.text!+"."
            judge = 1
        }
    }
    @IBAction func clear(_ sender: Any) {
        result.text=""
        judge = 0
        re=0
        equal1=0
        add1=0
        less1=0
        display.text=""
    }
    
    @IBAction func add(_ sender: Any) {
        if(add1==0&&less1==0)
        {
            if(equal1==1)//等于后再加
            {
                add1=add1+1
                x1=Double(display.text!)!
                X1=String(x1)
                X1=X1+"+"
                display.text=X1
                judge=0
                equal1=0
                result.text=""
            }
            else if(equal1==0)//平常加法
            {
                add1=add1+1
                x1=Double(result.text!)!
                X1=String(x1)
                display.text=X1+"+"
                X1=X1+"+"
                judge = 0
                result.text=""
            }
            
        }
        else if(add1>=1||less1>=1)//累加
        {
                x2=Double(result.text!)!
                X2=String(x2)
                display.text=X1+X2
                x1=x1+x2
                x2=0.0
                X1=String(x1)
                X1=X1+"+"
                display.text=X1
                result.text=""
        }
    }
    @IBAction func less(_ sender: Any) {
        if(less1==0&&add1==0)
        {
            if(equal1==1)//等于后再加
            {
                less1=less1+1
                x1=Double(display.text!)!
                X1=String(x1)
                X1=X1+"-"
                display.text=X1
                judge=0
                equal1=0
                result.text=""
            }
            else if(equal1==0)//平常加法
            {
                less1=less1+1
                x1=Double(result.text!)!
                X1=String(x1)
                display.text=X1+"-"
                X1=X1+"-"
                judge = 0
                result.text=""
            }
            
        }
        else if(less1>=1||add1>=1)//累加
        {
            x2=Double(result.text!)!
            X2=String(x2)
            display.text=X1+X2
            x1=x1-x2
            x2=0.0
            X1=String(x1)
            X1=X1+"-"
            display.text=X1
            result.text=""
            
        }
    }
    @IBAction func equal(_ sender: Any) {
        if(add1>=1)
        {
            x2=Double(result.text!)!
            X2=String(x2)
            display.text=X1+X2
            x1=x1+x2
            x2=0.0
            X1=String(x1)
            display.text=String(x1)
            result.text=""
            add1=0
            equal1=1
        }
        if(less1>=1)
        {
            x2=Double(result.text!)!
            X2=String(x2)
            display.text=X1+X2
            x1=x1-x2
            x2=0.0
            X1=String(x1)
            display.text=String(x1)
            result.text=""
            less1=0
            equal1=1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

