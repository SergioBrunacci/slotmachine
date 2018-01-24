//
//  ViewController.swift
//  slotmachine
//
//  Created by Sergio de Almeida Brunacci on 2018-01-23.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet weak var scorelabel: UILabel!
    
    private var game = SlotMachineGame()
    private var thescore = 0
    
    
    @IBAction func reset(_ sender: UIButton) {
        sender.pulsate()
        game.resetGame()
        scorelabel.text = String(game.getScore()) //scorelabel.text = String(100)
        for element in labels{
            element.text = "0"
            element.textColor = UIColor.white
            
        }
    }
    
    
    @IBAction func spin(_ sender: UIButton) {
        sender.pulsate()
        
        thescore = Int(scorelabel.text!)!
        thescore -= 2
        scorelabel.text = String(thescore)
        game = SlotMachineGame(5)
        
        var arrayOfDigit = game.getDigits()
        for index in labels.indices {
            labels[index].text = String(arrayOfDigit[index].getDigit())
            labels[index].textColor = arrayOfDigit[index].getColor()
            
        }
        
        let score = game.getScore()
        scorelabel.text = String(thescore + score)
        if (Int(scorelabel.text!))!  < 2 {
            sender.isEnabled = false
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




