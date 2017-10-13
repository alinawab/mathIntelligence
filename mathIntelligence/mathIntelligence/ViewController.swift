//
//  ViewController.swift
//  mathIntelligence
//
//  Created by Ali Nawab on 2017-10-06.
//  Copyright © 2017 alinawab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var numberOfMoves: UILabel!
    var numMoves = 0
    var button1Number = 1
    var button2Number = 3
    var button3Number = 2
    var button4Number = 10
    
    
    @IBOutlet weak var button1text: UIButton!
    @IBAction func button1(_ sender: Any) {
        setAllBoxestoBlue()
        var tempString =  button1text.title(for: .normal)
        var tempStringNum = Int(tempString!)
        button1Number = tempStringNum!
        tempStringNum = tempStringNum! + 1
        tempString  = "\(tempStringNum!)"
        
        
   button1text.setTitle(tempString, for: .normal)
        checkSameNumbers(input: button1text)
   
    }
    
    
    @IBOutlet weak var button2text: UIButton!
    @IBAction func button2(_ sender: Any) {
        setAllBoxestoBlue()
        var tempString =  button2text.title(for: .normal)
        var tempStringNum = Int(tempString!)
        
        tempStringNum = tempStringNum! + 1
        button2Number = tempStringNum!
        tempString  = "\(tempStringNum!)"
        
        button2text.setTitle(tempString, for: .normal)
        checkSameNumbers(input: button2text)
        
    }
    
    // controls for button 3
    
    @IBOutlet weak var button3text: UIButton!
    
    @IBAction func button3(_ sender: Any) {
        var tempString =  button3text.title(for: .normal)
        var tempStringNum = Int(tempString!)
        setAllBoxestoBlue()
        tempStringNum = tempStringNum! + 1
        button3Number = tempStringNum!
        tempString  = "\(tempStringNum!)"
        
        button3text.setTitle(tempString, for: .normal)
        checkSameNumbers(input: button3text)
    }
    
    // control for button 4
    @IBOutlet weak var button4text: UIButton!
    
    @IBAction func button4(_ sender: Any) {
        var tempString =  button4text.title(for: .normal)
        var tempStringNum = Int(tempString!)
        setAllBoxestoBlue()
        tempStringNum = tempStringNum! + 1
        button4Number = tempStringNum!
        tempString  = "\(tempStringNum!)"
        
        button4text.setTitle(tempString, for: .normal)
        checkSameNumbers(input: button4text)
        
    
    }
    
    func checkAllGreen() -> Bool {
        if
        (button1text.backgroundColor == UIColor.green)
        &&
        (button2text.backgroundColor == UIColor.green)
        &&
        (button3text.backgroundColor == UIColor.green)
        &&
        (button4text.backgroundColor == UIColor.green)
        {
           return true
        }
        else
        {
           return false
        }
    }
    
    
    func setAllBoxestoBlue (){
        button1text.backgroundColor = UIColor.blue
        button2text.backgroundColor = UIColor.blue
        button3text.backgroundColor = UIColor.blue
        button4text.backgroundColor = UIColor.blue
    }
    
    func resetAllBoxes(){
        setAllBoxestoBlue()
        // set numbers back to original
        button1text.setTitle("1", for: .normal)
        button2text.setTitle("3", for: .normal)
        button3text.setTitle("9", for: .normal)
        button4text.setTitle("11", for: .normal)
        // set game status back to original
        gameStatus.text = "Get all boxes to Turn Green"
        
    }
    
    
    func checkSameNumbers(input : UIButton ){
        
        // if game already finished and user clicks again, reset game
        if gameStatus.text == "Congratulations!!"
        {
            resetAllBoxes()
        }
        
        numMoves = numMoves + 1
        if button1text.title(for: .normal) == input.title(for: .normal){
            button1text.backgroundColor = UIColor.green
        }
        if button2text.title(for: .normal) == input.title(for: .normal){
            button2text.backgroundColor = UIColor.green
        }
        if button3text.title(for: .normal) == input.title(for: .normal){
            button3text.backgroundColor = UIColor.green
        }
        if button4text.title(for: .normal) == input.title(for: .normal){
            button4text.backgroundColor = UIColor.green
        }
        numberOfMoves.text = "\(numMoves)"
        
        
        if checkAllGreen() == true {
            gameStatus.text = "Congratulations!!"
        }
    }
    
    // Control for Maryam's Button
    @IBOutlet weak var maryamButton: UIButton!
    @IBAction func maryamButton(_ sender: Any) {
    
        maryamButton.setTitle("ABCD", for: .normal)
    
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

