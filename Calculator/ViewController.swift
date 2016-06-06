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
    var PrevOperator:Character? = nil
    var Num1:Double? = nil,Num2:Double? = nil,Answer:Double? = nil
    var JustClickedEquals:Bool = false, JustClickedOperator:Bool = false

    @IBOutlet weak var AnswerLabel: UILabel!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DivButton: UIButton!
    @IBOutlet weak var MultButton: UIButton!
    @IBOutlet weak var SubButton: UIButton!
    @IBOutlet weak var AddButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Resets Font Color of all Operators to White
    func ResetOperatorColortoWhite() {
        AddButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        SubButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        MultButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        DivButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }

    @IBAction func OnClickC(sender: AnyObject) {
        
        if CButton.currentTitle! == "AC" {
            self.Num1 = 0
            self.Num2 = 0
            
            //Resets the operator to white
            self.ResetOperatorColortoWhite()
        }
        
        
        if CButton.currentTitle! == "C" {
            
            AnswerLabel.text = "0"
            
            if self.PrevOperator != nil && self.PrevOperator! == "*" {
                MultButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            }
            
            else if self.PrevOperator != nil && self.PrevOperator! == "/" {
                DivButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            }
            
            else if self.PrevOperator != nil && self.PrevOperator! == "+" {
                AddButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            }
            
            else if self.PrevOperator != nil && self.PrevOperator! == "-" {
                SubButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            }
            
            CButton.setTitle("AC", forState: UIControlState.Normal)
        }

    
    }
    
    @IBAction func OnClickChangeSign(sender: AnyObject) {
        
    
    }
   
    @IBAction func OnClickPerc(sender: AnyObject) {
        
    }

    @IBAction func OnClickOperator(sender: AnyObject) {
        
        //If operators are selected without using equal to button
        if self.PrevOperator != nil {
            
            self.Num2 = Double(AnswerLabel.text!)!
            
            switch PrevOperator! {
            case "+" : self.Answer = self.Num1! + self.Num2!
            case "-" : self.Answer = self.Num1! - self.Num2!
            case "*" : self.Answer = self.Num1! * self.Num2!
            case "/" : self.Answer = self.Num1! / self.Num2!
            default : break;
            }
            
            self.ResetOperatorColortoWhite()
            
            AnswerLabel.text = "\(self.Answer!)"
        }
        
        if sender.currentTitle == "/" {
            
            self.PrevOperator = "/"
            
            //Division button is now red
            DivButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            
            //Other 3 buttons are white
            AddButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            SubButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            MultButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        
        else if sender.currentTitle == "X" {
            
            self.PrevOperator = "*"
            
            //Multiplication button is now red
            MultButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            
            //Other 3 buttons are white
            AddButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            SubButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            DivButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        
        else if sender.currentTitle == "+" {
            
            self.PrevOperator = "+"
            
            //Addition button is now red
            AddButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            
            //Other 3 buttons are white
            SubButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            MultButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            DivButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        
        else if sender.currentTitle == "-" {
            
            self.PrevOperator = "-"
            
            //Subtraction button is now red
            SubButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            
            //Other 3 buttons are white
            AddButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            MultButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            DivButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            
        }
        
        //Takes value for Num1
        self.Num1 = Double(AnswerLabel.text!)!
        
        //Resets Label
        //AnswerLabel.text = "0"
        
        self.JustClickedOperator = true
        
        self.JustClickedEquals = false
    
    
    }

    @IBAction func OnClickNumber(sender: AnyObject) {
        
        //In case this is the first number you enter
        if AnswerLabel.text == "0" || JustClickedEquals || JustClickedOperator{
            AnswerLabel.text = ""
        }
        
        //Splitting the cases
        if sender.currentTitle == "0" {
            AnswerLabel.text = AnswerLabel.text! + "0"
        }
        
        else if sender.currentTitle == "1" {
            AnswerLabel.text = AnswerLabel.text! + "1"
        }
        
        else if sender.currentTitle == "2" {
            AnswerLabel.text = AnswerLabel.text! + "2"
        }
        
        else if sender.currentTitle == "3" {
            AnswerLabel.text = AnswerLabel.text! + "3"
        }
        
        else if sender.currentTitle == "4" {
            AnswerLabel.text = AnswerLabel.text! + "4"
        }
        
        else if sender.currentTitle == "5" {
            AnswerLabel.text = AnswerLabel.text! + "5"
        }
        
        else if sender.currentTitle == "6" {
            AnswerLabel.text = AnswerLabel.text! + "6"
        }
        
        else if sender.currentTitle == "7" {
            AnswerLabel.text = AnswerLabel.text! + "7"
        }
        
        else if sender.currentTitle == "8" {
            AnswerLabel.text = AnswerLabel.text! + "8"
        }
        
        else if sender.currentTitle == "9" {
            AnswerLabel.text = AnswerLabel.text! + "9"
        }
        
        else if sender.currentTitle == "." {
            self.DecimalCount = 0
            
            for character in AnswerLabel.text!.characters {
                if character=="." {
                    self.DecimalCount+=1
                }
                
            }
            
            if (self.DecimalCount == 0) {
                AnswerLabel.text = AnswerLabel.text! + "."
            }

        }
        
        //Changes AC to C
        CButton.setTitle("C", forState: UIControlState.Normal)
        
        //Resets the operator to white
        self.ResetOperatorColortoWhite()
        
        self.JustClickedEquals = false
        
        self.JustClickedOperator = false
    }
    
    @IBAction func OnClickEquals(sender: AnyObject) {
        
        self.Num2 = Double(AnswerLabel.text!)!
        
        if Num1 == nil || Num2 == nil || PrevOperator == nil {
            return
        }
        
        switch PrevOperator! {
            case "+" : self.Answer = self.Num1! + self.Num2!
            case "-" : self.Answer = self.Num1! - self.Num2!
            case "*" : self.Answer = self.Num1! * self.Num2!
            case "/" : self.Answer = self.Num1! / self.Num2!
        default : break;
        }
        
        self.ResetOperatorColortoWhite()
        
        AnswerLabel.text = "\(self.Answer!)"
        
        self.PrevOperator = nil
        
        self.JustClickedEquals = true
        
        self.JustClickedOperator = false
        
    }
    
    
    
}

