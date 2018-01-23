//
//  ViewController.swift
//  Button Fun
//
//  Created by Justin Xu on 2018/1/23.
//  Copyright © 2018年 Justin Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for:.normal)
        let plainText = "\(title ?? "no button pressed") button pressed"
        //statusLabel.text = plainText
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [
            NSAttributedStringKey.font:
                UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)
        ]
        let nameRange = (plainText as NSString).range(of: title!)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
    
}

