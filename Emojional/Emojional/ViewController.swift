//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 8/12/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var explosionEmoji: UIButton!
    
    let emojis = ["🤯":"Explode","😒":"Annoyed"]
    
    let customMessages = ["Explode":["Your mind is blown","I suggest you write this moment down so you don't forget how mind blown you were at this moment in the future!"], "Annoyed":["You seem to be annoyed", "I suggest you take out your frustration by doing a prefered physical activity."]]
    
    
    @IBAction func showMessage(sender:UIButton){
        if let selectedEmotion = sender.titleLabel?.text{
            let titleText = sender.titleLabel?.text
            let messageText = (customMessages[emojis[selectedEmotion]!]!.count)-1
            let randomNum = Int.random(in: 0...messageText)

            let emojiMessage = customMessages[emojis[selectedEmotion]!]?[randomNum]
            
            let alertController = UIAlertController (title: emojis[selectedEmotion], message: "\(emojiMessage!)", preferredStyle: UIAlertController.Style.alert)

            alertController.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

