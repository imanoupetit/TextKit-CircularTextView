//
//  TextView.swift
//  CircularTextView
//
//  Created by Imanou Petit on 07/08/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class TextView: UITextView {
    
    convenience init() {
        self.init(frame: .zero, textContainer: nil)
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        isScrollEnabled = false
        isEditable = false
        textContainerInset = .zero
        self.textContainer.lineBreakMode = .byTruncatingTail
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var exclusionPath: UIBezierPath {
        let path = UIBezierPath(ovalIn: bounds)
        path.append(UIBezierPath(rect: bounds))
        path.usesEvenOddFillRule = true
        return path
    }
    
}

extension TextView {
    
    // Draw circle
    
    override func draw(_ rect: CGRect) {
        UIColor.orange.setFill()
        let path = UIBezierPath(ovalIn: rect)
        path.fill()
    }
    
    // Draw exclusion path
    
    /*
     override func draw(_ rect: CGRect) {
     UIColor.orange.setFill()
     exclusionPath.fill()
     }
     */
    
}
