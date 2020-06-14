//
//  ViewController.swift
//  calculate 2
//
//  Created by Александр   on 04.03.2020.
//  Copyright © 2020 Александр  . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Double Data
    var firstOperand: Double = 0
    var secondOperand: Double = 0
    var currentInput: Double {
        get {
            return Double(resultLabel.text!)!
        }
        set {
            let value = "\(newValue)"
            let valueArray = value.components(separatedBy: ".")
            if valueArray[1] == "0" {
                resultLabel.text = "\(valueArray[0])"
            } else {
                resultLabel.text = "\(newValue)"
            }
            stillTyping = false
        }
    }
    var dotIsPlaced = false
    
    // MARK: - Maths operations
    var operationSign: String = ""
    
    // MARK: - UIButton
    let zeroButton = UIButton()
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let fourButton = UIButton()
    let fiveButton = UIButton()
    let sixButton = UIButton()
    let sevenButton = UIButton()
    let eightButton = UIButton()
    let nineButton = UIButton()
    let plusButton = UIButton()
    let minusButton = UIButton()
    let multiplicationButton = UIButton()
    let divisionButton = UIButton()
    let equallyButton = UIButton()
    let deleteButton = UIButton()
    let percentButton = UIButton()
    let doubleButton = UIButton()
    let memorySaveButton = UIButton()
    
    // MARK: - UILabel
    var resultLabel = UILabel()
    var stillTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - UIButton
        
        zeroButton.frame = CGRect(x: 0, y: 792, width: 207, height: 103.5)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.black, for: .normal)
        zeroButton.titleLabel?.font = .systemFont(ofSize: 40)
        zeroButton.backgroundColor = .opaqueSeparator
        zeroButton.tag = 0
        view.addSubview(zeroButton)
        zeroButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        oneButton.frame = CGRect(x: 0, y: 688, width: 103.5, height: 103.5)
        oneButton.setTitle("1", for: .normal)
        oneButton.setTitleColor(.black, for: .normal)
        oneButton.titleLabel?.font = .systemFont(ofSize: 30)
        oneButton.backgroundColor = .systemGray
        oneButton.tag = 1
        view.addSubview(oneButton)
        oneButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        twoButton.frame = CGRect(x: 103, y: 688, width: 103.5, height: 103.5)
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(.black, for: .normal)
        twoButton.titleLabel?.font = .systemFont(ofSize: 30)
        twoButton.backgroundColor = .systemGray
        twoButton.tag = 2
        view.addSubview(twoButton)
        twoButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        threeButton.frame = CGRect(x: 207, y: 688, width: 103.5, height: 103.5)
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(.black, for: .normal)
        threeButton.titleLabel?.font = .systemFont(ofSize: 30)
        threeButton.backgroundColor = .systemGray
        threeButton.tag = 3
        view.addSubview(threeButton)
        threeButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        fourButton.frame = CGRect(x: 0, y: 584, width: 103.5, height: 103.5)
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(.black, for: .normal)
        fourButton.titleLabel?.font = .systemFont(ofSize: 30)
        fourButton.backgroundColor = .systemGray
        fourButton.tag = 4
        view.addSubview(fourButton)
        fourButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        fiveButton.frame = CGRect(x: 103, y: 584, width: 103.5, height: 103.5)
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(.black, for: .normal)
        fiveButton.titleLabel?.font = .systemFont(ofSize: 30)
        fiveButton.backgroundColor = .gray
        fiveButton.tag = 5
        view.addSubview(fiveButton)
        fiveButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        sixButton.frame = CGRect(x: 207, y: 584, width: 103.5, height: 103.5)
        sixButton.setTitle("6", for: .normal)
        sixButton.setTitleColor(.black, for: .normal)
        sixButton.titleLabel?.font = .systemFont(ofSize: 30)
        sixButton.backgroundColor = .gray
        sixButton.tag = 6
        view.addSubview(sixButton)
        sixButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        sevenButton.frame = CGRect(x: 0, y: 480, width: 103.5, height: 103.5)
        sevenButton.setTitle("7", for: .normal)
        sevenButton.setTitleColor(.black, for: .normal)
        sevenButton.titleLabel?.font = .systemFont(ofSize: 30)
        sevenButton.backgroundColor = .systemGray
        sevenButton.tag = 7
        view.addSubview(sevenButton)
        sevenButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        eightButton.frame = CGRect(x: 103, y: 480, width: 103.5, height: 103.5)
        eightButton.setTitle("8", for: .normal)
        eightButton.setTitleColor(.black, for: .normal)
        eightButton.titleLabel?.font = .systemFont(ofSize: 30)
        eightButton.backgroundColor = .gray
        eightButton.tag = 8
        view.addSubview(eightButton)
        eightButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        nineButton.frame = CGRect(x: 207, y: 480, width: 103.5, height: 103.5)
        nineButton.setTitle("9", for: .normal)
        nineButton.setTitleColor(.black, for: .normal)
        nineButton.titleLabel?.font = .systemFont(ofSize: 30)
        nineButton.backgroundColor = .gray
        nineButton.tag = 9
        view.addSubview(nineButton)
        nineButton.addTarget(self, action: #selector(numberPressed(sender:)), for: .touchDown)
        
        
        plusButton.frame = CGRect(x: 310, y: 480, width: 103.5, height: 103.5)
        plusButton.setTitle("+", for: .normal)
        plusButton.setTitleColor(.black, for: .normal)
        plusButton.titleLabel?.font = .systemFont(ofSize: 40)
        plusButton.backgroundColor = .orange
        plusButton.tag = 12
        view.addSubview(plusButton)
        plusButton.addTarget(self, action: #selector(twoOperandSignPressed(sender:)), for: .touchDown)
        // plusButton.addTarget(self, action: #selector(equalitySignPressed(sender:)), for: .touchUpInside)
        
        
        minusButton.frame = CGRect(x: 310, y: 379, width: 103.5, height: 103.5)
        minusButton.setTitle("-", for: .normal)
        minusButton.setTitleColor(.black, for: .normal)
        minusButton.titleLabel?.font = .systemFont(ofSize: 40)
        minusButton.backgroundColor = .orange
        minusButton.tag = 11
        view.addSubview(minusButton)
        minusButton.addTarget(self, action: #selector(twoOperandSignPressed(sender:)), for: .touchDown)
        // minusButton.addTarget(self, action: #selector(equalitySignPressed(sender:)), for: .touchUpInside)
        
        
        multiplicationButton.frame = CGRect(x: 310, y: 688, width: 103.5, height: 103.5)
        multiplicationButton.setTitle("*", for: .normal)
        multiplicationButton.setTitleColor(.black, for: .normal)
        multiplicationButton.titleLabel?.font = .systemFont(ofSize: 40)
        multiplicationButton.backgroundColor = .orange
        multiplicationButton.tag = 14
        view.addSubview(multiplicationButton)
        multiplicationButton.addTarget(self, action: #selector(twoOperandSignPressed(sender:)), for: .touchDown)
        // multiplicationButton.addTarget(self, action: #selector(equalitySignPressed(sender:)), for: .touchUpInside)
        
        
        
        divisionButton.frame = CGRect(x: 310, y: 584, width: 103.5, height: 103.5)
        divisionButton.setTitle("/", for: .normal)
        divisionButton.setTitleColor(.black, for: .normal)
        divisionButton.titleLabel?.font = .systemFont(ofSize: 40)
        divisionButton.backgroundColor = .orange
        divisionButton.tag = 13
        view.addSubview(divisionButton)
        divisionButton.addTarget(self, action: #selector(twoOperandSignPressed(sender:)), for: .touchDown)
        // divisionButton.addTarget(self, action: #selector(equalitySignPressed(sender:)), for: .touchUpInside)
        
        
        
        equallyButton.frame = CGRect(x: 310, y: 792, width: 103.5, height: 103.5)
        equallyButton.setTitle("=", for: .normal)
        equallyButton.setTitleColor(.black, for: .normal)
        equallyButton.titleLabel?.font = .systemFont(ofSize: 40)
        equallyButton.backgroundColor = .orange
        equallyButton.tag = 15
        view.addSubview(equallyButton)
        equallyButton.addTarget(self, action: #selector(equalitySignPressed(sender:)), for: .touchDown)
        
        
        deleteButton.frame = CGRect(x: 0, y: 379, width: 103.5, height: 103.5)
        deleteButton.setTitle("c", for: .normal)
        deleteButton.setTitleColor(.black, for: .normal)
        deleteButton.titleLabel?.font = .systemFont(ofSize: 50)
        deleteButton.backgroundColor = .darkGray
        deleteButton.tag = 10
        view.addSubview(deleteButton)
        deleteButton.addTarget(self, action: #selector(clearButtonPressed(sender:)), for: .touchDown)
        
        
        percentButton.frame = CGRect(x: 103, y: 379, width: 103.5, height: 103.5)
        percentButton.setTitle("%", for: .normal)
        percentButton.setTitleColor(.black, for: .normal)
        percentButton.titleLabel?.font = .systemFont(ofSize: 40)
        percentButton.backgroundColor = .darkGray
        percentButton.tag = 16
        view.addSubview(percentButton)
        percentButton.addTarget(self, action: #selector(persentageButtonPressed(sender:)), for: .touchDown)
        
        
        doubleButton.frame = CGRect(x: 207, y: 792, width: 103.5, height: 103.5)
        doubleButton.setTitle(".", for: .normal)
        doubleButton.setTitleColor(.black, for: .normal)
        doubleButton.titleLabel?.font = .systemFont(ofSize: 50)
        doubleButton.backgroundColor = .opaqueSeparator
        doubleButton.tag = 18
        view.addSubview(doubleButton)
        doubleButton.addTarget(self, action: #selector(dotButtonPressed(sender:)), for: .touchDown)
        
        memorySaveButton.frame = CGRect(x: 207, y: 379, width: 103.5, height: 103.5)
        memorySaveButton.setTitle("?", for: .normal)
        memorySaveButton.setTitleColor(.black, for: .normal)
        memorySaveButton.titleLabel?.font = .systemFont(ofSize: 40)
        memorySaveButton.backgroundColor = .darkGray
        memorySaveButton.tag = 17
        view.addSubview(memorySaveButton)
        memorySaveButton.addTarget(self, action: #selector(hzButtonPressed(sender:)), for: .touchDown)
        
        
        // MARK: - UILabel
        
        resultLabel.frame = CGRect(x: 20, y: 214, width: 374, height: 157)
        resultLabel.backgroundColor = .clear
        resultLabel.textColor = .white
        resultLabel.font = resultLabel.font.withSize(70)
        resultLabel.textAlignment = .right
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.minimumScaleFactor = 0.3
        resultLabel.text = "0"
        view.addSubview(resultLabel)
        
        // MARK: - View
        
        view.backgroundColor = .black
    }
    
    // MARK: - Methods
    
    @objc func numberPressed(sender: UIButton) { // Нажатие на цифру
        
        let number = sender.currentTitle
        if stillTyping {
            if resultLabel.text!.count < 20 {
                resultLabel.text = resultLabel.text! + number!
            }
        }else{
            resultLabel.text! = number!
            stillTyping = true
        }
    }
    
    @objc func twoOperandSignPressed(sender: UIButton) { // Появление операнда в памяти урок 2????????
        
        operationSign = sender.currentTitle!
        firstOperand = currentInput
        stillTyping = false
        dotIsPlaced = false
    }
    
    func operationWithTwoOperands(operation: (Double, Double) -> Double) { // Математические операции
        currentInput = operation(firstOperand,secondOperand)
        stillTyping = false
    }
    
    @objc func equalitySignPressed(sender: UIButton) { // Знак равно
        if stillTyping {
            secondOperand = currentInput
        }
        dotIsPlaced = false
        
        switch operationSign {
        case"+": operationWithTwoOperands{$0 + $1}
        case"-": operationWithTwoOperands{$0 - $1}
        case"*": operationWithTwoOperands{$0 * $1}
        case"/": operationWithTwoOperands{$0 / $1}
        default: break
        }
    }
    
    @objc func clearButtonPressed(sender: UIButton) { // Очистка
        
        firstOperand = 0
        secondOperand = 0
        currentInput = 0
        resultLabel.text = "0"
        stillTyping = false
        operationSign = ""
        dotIsPlaced = false
    }
    
    @objc func persentageButtonPressed(sender: UIButton) { // Процент
        
        if firstOperand == Double(0) {
            currentInput = currentInput / 100
        } else {
            secondOperand = firstOperand * currentInput / 100
        }
        stillTyping = false
        
    }
    
    @objc func dotButtonPressed(sender: UIButton) { // Добавление точки
        
        if stillTyping && !dotIsPlaced {
            resultLabel.text = resultLabel.text! + "."
            dotIsPlaced = true
        } else {
            if !stillTyping && !dotIsPlaced {
                resultLabel.text = "0."
            }
        }
        
    }
    
    @objc func hzButtonPressed(sender: UIButton) { // Плюс/Минус
        
        currentInput = -currentInput
    }
}

