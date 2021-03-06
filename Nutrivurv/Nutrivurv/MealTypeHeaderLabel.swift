//
//  MealTypeHeaderLabel.swift
//  Nutrivurv
//
//  Created by Dillon on 7/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit

// Used in header section of food log table view controller
class MealTypeHeaderLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "nutrivurv-blue-new")
        textColor = .white
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont(name: "Gaoel", size: 10.0)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        let orginalContentSize = super.intrinsicContentSize
        let height = orginalContentSize.height + 12
        layer.cornerRadius = height / 2
        layer.cornerCurve = .continuous
        layer.masksToBounds = true
        
        return CGSize(width: 84, height: height)
    }
}

