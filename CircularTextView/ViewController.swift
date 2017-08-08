//
//  ViewController.swift
//  CircularTextView
//
//  Created by Imanou Petit on 07/08/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let textView = TextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        textView.attributedText = NSAttributedString(string: string)
        view.addSubview(textView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = textView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let verticalConstraint = textView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let widthConstraint = textView.widthAnchor.constraint(equalToConstant: 240)
        let heightConstraint = textView.heightAnchor.constraint(equalToConstant: 240)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textView.textContainer.exclusionPaths = [textView.exclusionPath]
    }
    
}
