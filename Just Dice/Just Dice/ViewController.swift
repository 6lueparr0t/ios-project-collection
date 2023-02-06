//
//  ViewController.swift
//  Just Dice
//
//  Created by 임대현 on 2023/01/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    
    @IBOutlet weak var btnLucky: UIButton!
    @IBOutlet weak var btnSimple: UIButton!
    @IBOutlet weak var btnChicken: UIButton!
    
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnLucky.titleLabel?.textAlignment = .center
        btnSimple.titleLabel?.textAlignment = .center
        btnChicken.titleLabel?.textAlignment = .center
        
        lbResult.text = String(0)
    }
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    var dice1 = 0
    var dice2 = 0
    var dice3 = 0
    
    @IBAction func luckyRoll(_ sender: Any) {
        dice1 = Int.random(in: 0...5) < 4 ? 0:5
        dice2 = Int.random(in: 0...5) < 4 ? 0:5
        dice3 = Int.random(in: 0...5) < 4 ? 0:5
        
        diceImageView1.image = diceArray[dice1]
        diceImageView2.image = diceArray[dice2]
        diceImageView3.image = diceArray[dice3]
        
        lbResult.text = String(dice1+dice2+dice3+3)
    }
    
    @IBAction func simpleRoll(_ sender: Any) {
        dice1 = Int.random(in: 0...5)
        dice2 = Int.random(in: 0...5)
        dice3 = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[dice1]
        diceImageView2.image = diceArray[dice2]
        diceImageView3.image = diceArray[dice3]
        
        lbResult.text = String(dice1+dice2+dice3+3)
    }
    
    @IBAction func chickenRoll(_ sender: Any) {
        dice1 = Int.random(in: 2...3)
        dice2 = Int.random(in: 2...3)
        dice3 = Int.random(in: 2...3)
        
        diceImageView1.image = diceArray[dice1]
        diceImageView2.image = diceArray[dice2]
        diceImageView3.image = diceArray[dice3]
        
        lbResult.text = String(dice1+dice2+dice3+3)
    }
    
}

