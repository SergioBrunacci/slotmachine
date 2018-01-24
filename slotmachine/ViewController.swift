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
    private var score = 0
    
    
    @IBAction func reset(_ sender: UIButton) {
        
    }
    
    
    @IBAction func spin(_ sender: UIButton) {
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

