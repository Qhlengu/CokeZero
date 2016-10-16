//
//  RoadEnvironment Model.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 14/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import Foundation

// Taper Length
class RoadEnvironment {
    var signNumber: Int?
    var speedLimit: Int
    var Dmax: Int {
        switch true {
        case speedLimit<=40: return 10
        case speedLimit>40 && speedLimit<=50: return 15
        case speedLimit>50 && speedLimit<=60: return 45
        case speedLimit>70 && speedLimit<=90: return 80
        case speedLimit>90 && speedLimit<=110: return 100
        default: return 120
        }
    }
        var Dmin: Int {
        switch true {
        case speedLimit<=40: return 5
        case speedLimit>40 && speedLimit<=50: return 10
        case speedLimit>50 && speedLimit<=60: return 15
        case speedLimit>70 && speedLimit<=90: return 60
        case speedLimit>90 && speedLimit<=110: return 80
        default: return 100
        }
    }
        var taperTrafficControllatBeginningofTaper: Int {
        switch true {
        case speedLimit<=40: return 15
        case speedLimit>40 && speedLimit<=50: return 15
        case speedLimit>50 && speedLimit<=60: return 30
        case speedLimit>70 && speedLimit<=80: return 30
        case speedLimit>80 && speedLimit<=90: return 30
        case speedLimit>90 && speedLimit<=100: return 30
        default: return 30
        }
    }
        var lateralShiftTaperMin: Int {
        switch true {
        case speedLimit<=40: return 5
        case speedLimit>40 && speedLimit<=50: return 15
        case speedLimit>50 && speedLimit<=60: return 30
        case speedLimit>70 && speedLimit<=80: return 60
        case speedLimit>80 && speedLimit<=90: return 60
        case speedLimit>90 && speedLimit<=100: return 60
        default: return 60
        }
    }
    var lateralShiftTaperMax: Int {
        switch true {
        case speedLimit<=40: return 5
        case speedLimit>40 && speedLimit<=50: return 15
        case speedLimit>50 && speedLimit<=60: return 30
        case speedLimit>70 && speedLimit<=80: return 80
        case speedLimit>80 && speedLimit<=90: return 80
        case speedLimit>90 && speedLimit<=100: return 80
        default: return 80
        }
    }
        var mergeTapperMin: Int {
        switch true {
        case speedLimit<=40: return 15
        case speedLimit>40 && speedLimit<=50: return 30
        case speedLimit>50 && speedLimit<=60: return 60
        case speedLimit>70 && speedLimit<=80: return 120
        case speedLimit>80 && speedLimit<=90: return 120
        case speedLimit>90 && speedLimit<=100: return 120
        default: return 120
        }
    }
        var mergeTapperMax: Int {
        switch true {
        case speedLimit<=40: return 15
        case speedLimit>40 && speedLimit<=50: return 30
        case speedLimit>50 && speedLimit<=60: return 60
        case speedLimit>70 && speedLimit<=80: return 160
        case speedLimit>80 && speedLimit<=90: return 160
        case speedLimit>90 && speedLimit<=100: return 160
        default: return 160
        }
    }
        init(speedLimit: Int) {
        self.speedLimit = speedLimit
    }

}

