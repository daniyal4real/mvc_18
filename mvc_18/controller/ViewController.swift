//
//  ViewController.swift
//  mvc_18
//
//  Created by Daniyal Ganiuly on 11.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var money: UITextField!
    
    
    private var count = 0
    private var testData: [currencyToTenge] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let model = currencyToTenge.test
        setupData(with: model)
        setupInitialState()
    }
    
    func randomize() -> Int{
        let random = Int.random(in: 0..<testData.count)
        return random
    }


    func setupData(with testData: ([currencyToTenge])) {
        self.testData = testData
    }
    
    
    func displayData(param: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            name.text = testData[param].name
            let initial = Double(money.text!) ?? 0
            let convertedAmount = initial / testData[param].value
            let stringFromNumber = String(String(convertedAmount).dropLast())
            let newNumber = Double(Int(100*Double(stringFromNumber)!))/100
            amount.text = String(newNumber)
        } else {
            print("Error")
        }
    }
    
    func setupInitialState() {
        displayData(param: count)
    }
    
    @IBAction func next(_ sender: Any) {
        displayData(param: randomize())
    }
}

