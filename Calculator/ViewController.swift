//
//  ViewController.swift
//  Calculator
//
//  Created by Gautham Kumar on 25/05/16.
//  Copyright © 2016 Gautham Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var DecimalCount:Int = 0
    var PrevOperator:Character = "+"
    var Num1 = 0.0,Num2 = 0.0,Answer = 0.0

    @IBOutlet weak var AnswerLabel: UILabel!
    @IBOutlet weak var CButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnClickC(sender: AnyObject) {
        AnswerLabel.text = "0"
        CButton.setTitle("AC", forState: UIControlState.Normal)
        self.DecimalCount = 0
    }
    
    @IBAction func OnClickChangeSign(sender: AnyObject) {
    }
   
    @IBAction func OnClickPerc(sender: AnyObject) {
        
    }

    @IBAction func OnClickDiv(sender: AnyObject) {
        self.PrevOperator = "/"
        
        self.Num1 = Double(AnswerLabel.text!)!
        
        AnswerLabel.text = "0"
    }

    @IBAction func OnClickMult(sender: AnyObject) {
        self.PrevOperator = "*"
        
        self.Num1 = Double(AnswerLabel.text!)!
        
        AnswerLabel.text = "0"
    }
    
    @IBAction func OnClickSub(sender: AnyObject) {
        self.PrevOperator = "-"
        
        self.Num1 = Double(AnswerLabel.text!)!
        
        AnswerLabel.text = "0"
    }
    
    @IBAction func OnClickAdd(sender: AnyObject) {
        self.PrevOperator = "+"
        
        self.Num1 = Double(AnswerLabel.text!)!
        
        AnswerLabel.text = "0"
    }
    
    @IBAction func OnClick0(sender: AnyObject) {
        
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "0"
        
        CButton.setTitle("C", forState: UIControlState.Normal)
    }
    
    @IBAction func OnClick1(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "1"
        
        CButton.setTitle("C", forState: UIControlState.Normal)
    }
    
    @IBAction func OnClick2(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "2"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick3(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "3"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick4(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "4"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick5(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "5"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick6(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "6"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick7(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "7"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick8(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "8"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClick9(sender: AnyObject) {
        if AnswerLabel.text == "0" {
            AnswerLabel.text = ""
        }
        
        AnswerLabel.text = (AnswerLabel.text ?? "") + "9"
        
        CButton.setTitle("C", forState: UIControlState.Normal)    }
    
    @IBAction func OnClickDec(sender: AnyObject) {
        
        if (self.DecimalCount==0) {
            AnswerLabel.text = (AnswerLabel.text ?? "") + "."
        }
        
        self.DecimalCount += 1
        
    }
    
    @IBAction func OnClickEquals(sender: AnyObject) {
        
        self.Num2 = Double(AnswerLabel.text!)!
        
        switch PrevOperator {
            case "+" : self.Answer = self.Num1 + self.Num2
            case "-" : self.Answer = self.Num1 - self.Num2
            case "*" : self.Answer = self.Num1 * self.Num2
            case "/" : self.Answer = self.Num1 / self.Num2
        default : break;
        }
        
        AnswerLabel.text = "\(self.Answer)"
        
    }
    
    
    
}

