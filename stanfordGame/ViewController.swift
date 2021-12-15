//
//  ViewController.swift
//  stanfordGame
//
//  Created by Кирилл Самарченко on 13.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var touches = 0 {
        didSet{
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.blue
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
    
    let emojiCollection = ["🐕", "🦄", "🐕", "👻"]
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        // touchLabel.text = "Touches: \(touches)" - мы перенесли его в didSet
        if let buttonIndex = buttonCollection.firstIndex(of: sender) { //извлечение опционалаs
        flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    

}

