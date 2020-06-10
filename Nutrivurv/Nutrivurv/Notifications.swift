//
//  Notifications.swift
//  Nutrition Tracker
//
//  Created by Michael Stoffer on 3/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension Notification.Name {
    static let bmiUpdated = Notification.Name(rawValue: "bmiUpdated")
    static let calculateBMI = Notification.Name(rawValue: "calculateBMI")
}
