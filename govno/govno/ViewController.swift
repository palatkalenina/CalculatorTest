//
//  ViewController.swift
//  govno
//
//  Created by Сергей Пупкевич on 11.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - GeneralButtons and Label
    var digitsLabel = UILabel()
    var nullButton = UIButton()
    var firstButton = UIButton()
    var secondButton = UIButton()
    var thirdButton = UIButton()
    var fouthButton = UIButton()
    var fithButton = UIButton()
    var sixthButton = UIButton()
    var seventhButton = UIButton()
    var eighthButton = UIButton()
    var ninthButton = UIButton()
    var cAndAcButton = UIButton()
    var plusMinusButton = UIButton()
    var percentButton = UIButton()
    var divisionButton = UIButton()
    var myltiplayButton = UIButton()
    var minusButton = UIButton()
    var plusButton = UIButton()
    var equalButton = UIButton()
    var dottButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .darkGray
        // MARK: - digitsLabel
        self.digitsLabel.frame = CGRect(x: -5, y: 250, width: 400, height: 100)
        self.digitsLabel.text = "0"
        self.digitsLabel.font = UIFont.boldSystemFont(ofSize: 65)
        self.digitsLabel.adjustsFontSizeToFitWidth = true
        self.digitsLabel.textAlignment = .right
        self.digitsLabel.textColor = .white
        view.addSubview(digitsLabel)
        
        
        // MARK: - Buttons
        
        //nine
        self.ninthButton.frame = CGRect(x: 200, y: 450, width: 100, height: 100)
        let ninthIMage = UIImage(named: "9")
        self.ninthButton.setBackgroundImage(ninthIMage, for: .normal)
        self.ninthButton.addTarget(self, action: #selector(nine), for: .touchDown)
        self.view.addSubview(ninthButton)
        
        //eight
        self.eighthButton.frame = CGRect(x: 100, y: 450, width: 100, height: 100)
        let eightImage = UIImage(named: "8")
        self.eighthButton.setBackgroundImage(eightImage, for: .normal)
        self.eighthButton.addTarget(self, action: #selector(eight), for: .touchDown)
        self.view.addSubview(eighthButton)
        
        //seven
        self.seventhButton.frame = CGRect(x: 0, y: 450, width: 100, height: 100)
        let seventhImage = UIImage(named: "7")
        self.seventhButton.setBackgroundImage(seventhImage, for: .normal)
        self.seventhButton.addTarget(self, action: #selector(seven), for: .touchDown)
        self.view.addSubview(seventhButton)
        
        //six
        self.sixthButton.frame = CGRect(x: 200, y: 550, width: 100, height: 100)
        let sixthIMage = UIImage(named: "6")
        self.sixthButton.setBackgroundImage(sixthIMage, for: .normal)
        self.sixthButton.addTarget(self, action: #selector(six), for: .touchDown)
        self.view.addSubview(sixthButton)
        
        //five
        self.fithButton.frame = CGRect(x: 100, y: 550, width: 100, height: 100)
        let fifrhImage = UIImage(named: "5")
        self.fithButton.setBackgroundImage(fifrhImage, for: .normal)
        self.fithButton.addTarget(self, action: #selector(five), for: .touchDown)
        self.view.addSubview(fithButton)
        
        //four
        self.fouthButton.frame = CGRect(x: 0, y: 550, width: 100, height: 100)
        let fourthImage = UIImage(named: "4")
        self.fouthButton.setBackgroundImage(fourthImage, for: .normal)
        self.fouthButton.addTarget(self, action: #selector(four), for: .touchDown)
        self.view.addSubview(fouthButton)
        
        //three
        self.thirdButton.frame = CGRect(x: 200, y: 650, width: 100, height: 100)
        let thirdIMage = UIImage(named: "3")
        self.thirdButton.setBackgroundImage(thirdIMage, for: .normal)
        self.thirdButton.addTarget(self, action: #selector(three), for: .touchDown)
        self.view.addSubview(thirdButton)
        
        //two
        self.secondButton.frame = CGRect(x: 100, y: 650, width: 100, height: 100)
        let secondImage = UIImage(named: "2")
        self.secondButton.setBackgroundImage(secondImage, for: .normal)
        self.secondButton.addTarget(self, action: #selector(two), for: .touchDown)
        self.view.addSubview(secondButton)
        
        //one
        self.firstButton.frame = CGRect(x: 0, y: 650, width: 100, height: 100)
        let firstImage = UIImage(named: "1")
        self.firstButton.setBackgroundImage(firstImage, for: .normal)
        self.firstButton.addTarget(self, action: #selector(one), for: .touchDown)
        self.view.addSubview(firstButton)
        
        //zero
        self.nullButton.frame = CGRect(x: 0, y:750, width: 200, height: 100)
        let nulImage = UIImage(named: "0")
        self.nullButton.setBackgroundImage(nulImage, for: .normal)
        self.nullButton.addTarget(self, action: #selector(zero), for: .touchDown)
        self.view.addSubview(nullButton)
        
        // MARK: - ActionButtons
        
        //dott
        self.dottButton.frame = CGRect(x: 200, y: 750, width: 100, height: 100)
        let dottImage = UIImage(named: ",")
        self.dottButton.setBackgroundImage(dottImage, for: .normal)
        self.dottButton.addTarget(self, action: #selector(dot), for: .touchDown)
        self.view.addSubview(dottButton)
        
        //C/AC
        self.cAndAcButton.frame = CGRect(x: 0, y: 350, width: 100, height: 100)
        let ACImage = UIImage(named: "AC")
        self.cAndAcButton.setBackgroundImage(ACImage, for: .normal)
        self.cAndAcButton.addTarget(self, action: #selector(clear), for: .touchDown)
        self.view.addSubview(cAndAcButton)
        
        //plusminus
        self.plusMinusButton.frame = CGRect(x: 100, y: 350, width: 100, height: 100)
        let plusMinusImage = UIImage(named: "plus:minus")
        self.plusMinusButton.setBackgroundImage(plusMinusImage, for: .normal)
        self.plusMinusButton.addTarget(self, action: #selector(plusMinus), for: .touchDown)
        self.view.addSubview(plusMinusButton)
        
        //percent
        self.percentButton.frame = CGRect(x: 200, y: 350, width: 100, height: 100)
        let percentImage = UIImage(named: "percent")
        self.percentButton.setBackgroundImage(percentImage, for: .normal)
        self.percentButton.addTarget(self, action: #selector(percent), for: .touchDown)
        self.view.addSubview(percentButton)
        
        //division
        self.divisionButton.frame = CGRect(x: 300, y: 350, width: 100, height: 100)
        let divisionImage = UIImage(named: "division")
        self.divisionButton.setBackgroundImage(divisionImage, for: .normal)
        self.divisionButton.addTarget(self, action: #selector(divide), for: .touchDown)
        self.view.addSubview(divisionButton)
        
        //miltiplay
        self.myltiplayButton.frame = CGRect(x: 300, y: 450, width: 100, height: 100)
        let myltiplayImage = UIImage(named: "myltiplay")
        self.myltiplayButton.setBackgroundImage(myltiplayImage, for: .normal)
        self.myltiplayButton.addTarget(self, action: #selector(multiply), for: .touchDown)
        self.view.addSubview(myltiplayButton)
        
        //minus
        self.minusButton.frame = CGRect(x: 300, y: 550, width: 100, height: 100)
        let minusImage = UIImage(named: "minus")
        self.minusButton.setBackgroundImage(minusImage, for: .normal)
        self.minusButton.addTarget(self, action: #selector(minus), for: .touchDown)
        self.view.addSubview(minusButton)
        
        //plus
        self.plusButton.frame = CGRect(x: 300, y: 650, width: 100, height: 100)
        let plusImage = UIImage(named: "plus")
        self.plusButton.setBackgroundImage(plusImage, for: .normal)
        self.plusButton.addTarget(self, action: #selector(add), for: .touchDown)
        self.view.addSubview(plusButton)
        
        //equal
        self.equalButton.frame = CGRect(x: 300, y: 750, width: 100, height: 100)
        let equalImage = UIImage(named: "equal")
        self.equalButton.setBackgroundImage(equalImage, for: .normal)
        self.equalButton.addTarget(self, action: #selector(equal), for: .touchDown)
        self.view.addSubview(equalButton)
        
    }
    
    // MARK: - CalcHelpers
    var calculationString = ""
    var historyString = ""
    var secondNumber: Double = 0.0
    
    
    // MARK: - 9..0 logic
    @objc func nine(sender: UIButton) {
        print("9")
        calculationString.append("9")
        digitsLabel.text = calculationString
        
    }
    @objc func eight(sender: UIButton) {
        print("8")
        calculationString.append("8")
        digitsLabel.text = calculationString
        
    }
    @objc func seven(sender: UIButton) {
        print("7")
        calculationString.append("7")
        digitsLabel.text = calculationString
    }
    @objc func six(sender: UIButton) {
        print("6")
        calculationString.append("6")
        digitsLabel.text = calculationString
        
    }
    @objc func five(sender: UIButton) {
        print("5")
        calculationString.append("5")
        digitsLabel.text = calculationString
        
    }
    @objc func four(sender: UIButton) {
        print("4")
        calculationString.append("4")
        digitsLabel.text = calculationString
        
    }
    @objc func three(sender: UIButton) {
        print("3")
        calculationString.append("3")
        digitsLabel.text = calculationString
        
    }
    @objc func two(sender: UIButton) {
        print("2")
        calculationString.append("2")
        digitsLabel.text = calculationString
        
    }
    @objc func one(sender: UIButton) {
        print("1")
        calculationString.append("1")
        digitsLabel.text = calculationString
        
    }
    @objc func zero(sender: UIButton) {
        print("0")
        calculationString.append("0")
        digitsLabel.text = calculationString
    }
    
    @objc func dot(sender: UIButton) {
        if !calculationString.contains(".") {
            calculationString.append(".")
            digitsLabel.text = calculationString
        }
    }
    
    // MARK: - BasicOperations
    enum Operation {
        case add, subtract, multiply, divide
    }
    var currentOperation: Operation?
    
    @objc func clear(sender: UIButton) {
        calculationString = ""
        digitsLabel.text = calculationString
    }
    
    
    @objc func add(sender: UIButton) {
        currentOperation = .add
        secondNumber = Double(calculationString) ?? 0
        calculationString = ""
    }
    
    @objc func minus(sender: UIButton) {
        currentOperation = .subtract
        secondNumber = Double(calculationString) ?? 0
        calculationString = ""
    }
    
    @objc func multiply(sender: UIButton) {
        currentOperation = .multiply
        secondNumber = Double(calculationString) ?? 0
        calculationString = ""
    }
    
    @objc func divide(sender: UIButton) {
        currentOperation = .divide
        secondNumber = Double(calculationString) ?? 0
        calculationString = ""
    }
    
    @objc func equal(sender: UIButton) {
        let result = performCalculation()
        digitsLabel.text = "\(result)"
        currentOperation = nil
        calculationString = "\(result)"
    }
    
    @objc func plusMinus(sender: UIButton) {
        if !calculationString.isEmpty {
            calculationString = "-" + calculationString
        }
        digitsLabel.text = calculationString
    }
    
    @objc func percent(sender: UIButton) {
        if let number = Double(calculationString) {
            let result = number * 0.01
            calculationString = String(result)
        }
        digitsLabel.text = calculationString
    }
    
    
    
    func performCalculation() -> Decimal {
        guard let firstNumber = Double(calculationString) else { return 0 }
        
        var result: Decimal = 0.0
        switch currentOperation {
        case .add:
            result = Decimal((firstNumber + secondNumber))
        case .subtract:
            result = Decimal((secondNumber - firstNumber))
        case .multiply:
            result = Decimal((firstNumber * secondNumber))
        case .divide:
            guard secondNumber != 0 else { return 0 }
            result = Decimal((secondNumber / firstNumber))
        case .none:
            return Decimal(firstNumber)
        }
        
        return result
    }
    
}

