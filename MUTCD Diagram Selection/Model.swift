//
//  Model.swift
//  MUTCD Diagram Selection
//
//  Created by H Le-Nguyen on 13/10/16.
//  Copyright © 2016 H Le-Nguyen. All rights reserved.
//

import Foundation
import UIKit




protocol PickerViewTitle {
    
}
protocol ConvertPickerViewRowPathToMethod {
    static func convertPickerViewRowPathToMethod(pathIndexRow: Int, typeOfWorkSelected: DescriptionOfWork) ->DiagramNumber
}

protocol StoryBoardTransition {
    static func storyboardNavigation(delegate: DiagramNumber) ->StoryBoardID.RawValue
}







protocol ShowTrafficManagementPlanDiagram {
    var workDescribtion: [DescriptionOfWork] { get }
}

enum StoryBoardID: String {
    case showDiagram =                                                  "Show Diagram"
    case table52     =                                                  "Table 5.2"
    case table53     =                                                  "Table 5.3"
    case table54     =                                                  "Table 5.4"
    case table55     =                                                  "Table 5.5"
    case bridgeWork  =                                                  "Reminder View Controller"
    case potentialError =                                               "Something is Wrong"
}





enum LaneType: String {
    case twoWayLane =                                                   "2 Way Lane"
    case multilaneUndivided =                                           "Multi - Lane Undivided"
    case multilaneDivided =                                             "Multi - Lane Divided"

}





enum DiagramNumber: String {
    case diagram1 =                                                     "1"
    case diagram2 =                                                     "2"
    case diagram3 =                                                     "3"
    case diagram4 =                                                     "4"
    case diagram5 =                                                     "5"
    case diagram6 =                                                     "6"
    case diagram7 =                                                     "7"
    case diagram8 =                                                     "8"
    case diagram9 =                                                     "9"
    case diagram10 =                                                    "10"
    case diagram11 =                                                    "11"
    case diagram12 =                                                    "12"
    case diagram13 =                                                    "13"
    case diagram14 =                                                    "14"
    case diagram15 =                                                    "15"
    case diagram16 =                                                    "16"
    case diagram17 =                                                    "17"
    case diagram18 =                                                    "18"
    case diagram19 =                                                    "19"
    case diagram20 =                                                    "20"
    case diagram21 =                                                    "21"
    case diagram22 =                                                    "22"
    case diagram23 =                                                    "23"
    case diagram24 =                                                    "24"
    case diagram25 =                                                    "25"
    case diagram26 =                                                    "26"
    case diagram27 =                                                    "27"
    case diagram28 =                                                    "28"
    case diagram29 =                                                    "29"
    case diagram30 =                                                    "30"
    case diagram31 =                                                    "31"
    case diagram32 =                                                    "32"
    case diagram33 =                                                    "33"
    case diagram34 =                                                    "34 and 35"
    case diagram36 =                                                    "36"
    case diagram37 =                                                    "37"
    case table52 =                                                      "table 5.2"
    case table53 =                                                      "table 5.3"
    case table54 =                                                      "table 5.4"
    case table55 =                                                      "table 5.5"
    case bridgework =                                                   "Select the appropriate description and Diagram from this table and also refer to Clause 5.2"
    case diagram3and10 =                                                "3 and 10"
    case diagram3and11 =                                                "3 and 11"
    case potentialError =                                               "There is no diagram available"
    
    var imageArray: [String] {
        switch self {
        case .diagram1: return ["1A", "N1A", "1B", "N1B"]
        case .diagram2: return [DiagramNumber.diagram2.rawValue, "N\(DiagramNumber.diagram2.rawValue)"]
        case .diagram3: return [DiagramNumber.diagram3.rawValue, "N\(DiagramNumber.diagram3.rawValue)"]
        case .diagram4: return [DiagramNumber.diagram4.rawValue, "N\(DiagramNumber.diagram4.rawValue)"]
        case .diagram5: return [DiagramNumber.diagram5.rawValue, "N\(DiagramNumber.diagram5.rawValue)"]
        case .diagram6: return [DiagramNumber.diagram6.rawValue, "N\(DiagramNumber.diagram6.rawValue)"]
        case .diagram7: return ["7A", "N7A", "7B", "N7B", "7C", "N7C", "7D", "N7D"]
        case .diagram8: return [DiagramNumber.diagram8.rawValue, "N\(DiagramNumber.diagram8.rawValue)"]
        case .diagram9: return [DiagramNumber.diagram9.rawValue, "N\(DiagramNumber.diagram9.rawValue)"]
        case .diagram10: return [DiagramNumber.diagram10.rawValue, "N\(DiagramNumber.diagram10.rawValue)"]
        case .diagram11: return [DiagramNumber.diagram11.rawValue, "N\(DiagramNumber.diagram11.rawValue)"]
        case .diagram12: return [DiagramNumber.diagram12.rawValue, "N\(DiagramNumber.diagram12.rawValue)"]
        case .diagram13: return [DiagramNumber.diagram13.rawValue, "N\(DiagramNumber.diagram13.rawValue)"]
        case .diagram14: return [DiagramNumber.diagram14.rawValue, "N\(DiagramNumber.diagram14.rawValue)"]
        case .diagram15: return [DiagramNumber.diagram15.rawValue, "N\(DiagramNumber.diagram15.rawValue)"]
        case .diagram16: return [DiagramNumber.diagram16.rawValue, "N\(DiagramNumber.diagram16.rawValue)"]
        case .diagram17: return [DiagramNumber.diagram17.rawValue, "N\(DiagramNumber.diagram17.rawValue)"]
        case .diagram18: return [DiagramNumber.diagram18.rawValue, "N\(DiagramNumber.diagram18.rawValue)"]
        case .diagram19: return [DiagramNumber.diagram19.rawValue, "N\(DiagramNumber.diagram19.rawValue)"]
        case .diagram20: return [DiagramNumber.diagram20.rawValue, "N\(DiagramNumber.diagram20.rawValue)"]
        case .diagram21: return [DiagramNumber.diagram21.rawValue, "N\(DiagramNumber.diagram21.rawValue)"]
        case .diagram22: return [DiagramNumber.diagram22.rawValue, "N\(DiagramNumber.diagram22.rawValue)"]
        case .diagram23: return [DiagramNumber.diagram23.rawValue, "N\(DiagramNumber.diagram23.rawValue)"]
        case .diagram24: return [DiagramNumber.diagram24.rawValue, "N\(DiagramNumber.diagram24.rawValue)"]
        case .diagram25: return [DiagramNumber.diagram25.rawValue, "N\(DiagramNumber.diagram25.rawValue)"]
        case .diagram26: return [DiagramNumber.diagram26.rawValue, "N\(DiagramNumber.diagram26.rawValue)"]
        case .diagram27: return [DiagramNumber.diagram27.rawValue, "N\(DiagramNumber.diagram27.rawValue)"]
        case .diagram28: return [DiagramNumber.diagram28.rawValue, "N\(DiagramNumber.diagram28.rawValue)"]
        case .diagram29: return [DiagramNumber.diagram29.rawValue, "N\(DiagramNumber.diagram29.rawValue)"]
        case .diagram30: return [DiagramNumber.diagram30.rawValue, "N\(DiagramNumber.diagram30.rawValue)"]
        case .diagram31: return [DiagramNumber.diagram31.rawValue, "N\(DiagramNumber.diagram31.rawValue)"]
        case .diagram32: return [DiagramNumber.diagram32.rawValue, "N\(DiagramNumber.diagram32.rawValue)"]
        case .diagram33: return [DiagramNumber.diagram33.rawValue, "N\(DiagramNumber.diagram33.rawValue)"]
        case .diagram34: return ["34", "N34", "35", "N35"]
        case .diagram36: return [DiagramNumber.diagram36.rawValue, "N\(DiagramNumber.diagram36.rawValue)"]
        case .diagram37: return [DiagramNumber.diagram37.rawValue, "N\(DiagramNumber.diagram37.rawValue)"]
        case .diagram3and10: return ["3", "N3", "10", "N10"]
        case .diagram3and11: return ["3", "N3", "11", "N11"]
        default: return ["default"]
        }
    }
}






enum DescriptionOfWork: String {
    case closureOfFootpath =                                            "Closure Of Footpath"
    case closureOfShoulder =                                            "Closure Of Shoulder"
    case closureofTrafficlanes =                                        "Closure Of Traffic Lanes"
    case temporaryRoadClosure =                                         "Temporary Road Closure"
    case workUnderTraffic =                                             "Work Under Traffic"
    case bridgeWorks =                                                  "Bridge Works"
    case highVehicleDetour =                                            "High Vehicle Detour"
    case heavyVehicleDetour =                                           "Heavy Vehicle Detour"
    case oneLaneSidetrack =                                             "One Lane Side Track"
    case twoLaneSideTrack =                                             "Two Lane Side Track"
    case sideTrackCrossMedian =                                         "Side Track Cross Median"
    case oneDirectionDetour =                                           "One Direction Detour"
    case allTrafficDetour =                                             "All Traffic Detour"
    case exitRampClosure =                                              "Exit Ramp Closure"
    case freequentlyChangingWorkArea =                                  "Frequently Changing Work Area"
    case blasting =                                                     "Blasting"
    case haulRoadCrossing =                                             "Haul Road Crossing"
    case pavementMarking =                                              "Pavement Marking"
    case shortermKerbWorkAtAnIntersectionInABuiltUpArea =               "Shorterm Kerb Work At Intersection In A Built Up Area"
    case roundAbouts =                                                  "RoundAbouts"

var twoWay: DiagramNumber {
    switch self {
        case .closureOfFootpath: return                                 .diagram36
        case .closureOfShoulder: return                                 .table52
        case .closureofTrafficlanes: return                             .table53
        case .temporaryRoadClosure: return                              .table54
        case .workUnderTraffic: return                                  .diagram5
        case .bridgeWorks: return                                       .bridgework
        case .heavyVehicleDetour: return                                .diagram24
        case .highVehicleDetour: return                                 .diagram23
        case .oneLaneSidetrack : return                                 .diagram25
        case .twoLaneSideTrack : return                                 .diagram26
        case .oneDirectionDetour: return                                .diagram28
        case .allTrafficDetour: return                                  .diagram29
        case .freequentlyChangingWorkArea: return                       .diagram1
        case .blasting: return                                          .diagram22
        case .haulRoadCrossing: return                                  .diagram21
        case .pavementMarking: return                                   .diagram32
        case .shortermKerbWorkAtAnIntersectionInABuiltUpArea: return    .diagram33
        case .roundAbouts: return                                       .diagram20
        default: return                                                 .potentialError
        }
    }
var multiLaneUndivided: DiagramNumber {
    switch self {
        case .closureOfFootpath: return                                 .diagram36
        case .closureOfShoulder: return                                 .diagram10
        case .closureofTrafficlanes: return                             .table55
        case .temporaryRoadClosure: return                              .diagram22
        case .highVehicleDetour: return                                 .diagram23
        case .heavyVehicleDetour: return                                .diagram24
        case .oneLaneSidetrack: return                                  .diagram25
        case .twoLaneSideTrack: return                                  .diagram26
        case .oneDirectionDetour: return                                .diagram28
        case .allTrafficDetour: return                                  .diagram29
        case .freequentlyChangingWorkArea: return                       .diagram1
        case .blasting: return                                          .diagram22
        case .pavementMarking: return                                   .diagram32
        case .shortermKerbWorkAtAnIntersectionInABuiltUpArea: return    .diagram34
        case .roundAbouts: return                                       .diagram19
        case .bridgeWorks: return                                       .bridgework
        default: return                                                 .potentialError
        }
    }
var multilaneDivided: DiagramNumber {
    switch self {
        case .closureOfShoulder: return                                 .diagram10
        case .closureofTrafficlanes: return                             .table55
        case .temporaryRoadClosure: return                              .diagram9
        case .bridgeWorks: return                                       .bridgework
        case .highVehicleDetour: return                                 .diagram23
        case .heavyVehicleDetour: return                                .diagram24
        case .oneLaneSidetrack: return                                  .diagram25
        case .twoLaneSideTrack: return                                  .diagram26
        case .sideTrackCrossMedian: return                              .diagram27
        case .exitRampClosure: return                                   .diagram30
        case .freequentlyChangingWorkArea: return                       .diagram1
        case .blasting: return                                          .diagram22
        case .pavementMarking: return                                   .diagram32
        case .shortermKerbWorkAtAnIntersectionInABuiltUpArea: return    .diagram34
        case .roundAbouts: return                                       .diagram19
        default: return                                                 .potentialError
        }
    }
}


struct DiagramSelection: ShowTrafficManagementPlanDiagram {
    var workDescribtion: [DescriptionOfWork] =                         [
                                                                        .closureOfFootpath,
                                                                        .closureOfShoulder,
                                                                        .closureofTrafficlanes,
                                                                        .temporaryRoadClosure,
                                                                        .workUnderTraffic,
                                                                        .bridgeWorks,
                                                                        .highVehicleDetour,
                                                                        .heavyVehicleDetour,
                                                                        .oneLaneSidetrack,
                                                                        .twoLaneSideTrack,
                                                                        .sideTrackCrossMedian,
                                                                        .oneDirectionDetour,
                                                                        .allTrafficDetour,
                                                                        .exitRampClosure,
                                                                        .freequentlyChangingWorkArea,
                                                                        .blasting,
                                                                        .haulRoadCrossing,
                                                                        .pavementMarking,
                                                                        .shortermKerbWorkAtAnIntersectionInABuiltUpArea,
                                                                        .roundAbouts]
    var pickerRowCount: Int { return workDescribtion.count }
    var pickerValue: [String] { return self.workDescribtion.map { $0.rawValue }
}
}
struct LaneDescription {
    var laneDescription: [LaneType] =                                   [.twoWayLane,
                                                                         .multilaneUndivided,
                                                                         .multilaneDivided]
    var pickerRowCount: Int { return laneDescription.count }
    var pickerValue: [String] { return laneDescription.map { $0.rawValue }
}
    
}

class Page51: ConvertPickerViewRowPathToMethod, StoryBoardTransition {
    let rowItem = DiagramSelection().pickerValue
    let columnItem = LaneDescription().pickerValue
    let rowCount = DiagramSelection().pickerRowCount
    let columnCount = LaneDescription().pickerRowCount
    
    class func convertPickerViewRowPathToMethod(pathIndexRow: Int, typeOfWorkSelected: DescriptionOfWork) -> DiagramNumber {
        switch true {
        case pathIndexRow == 0: return typeOfWorkSelected.twoWay
        case pathIndexRow == 1: return typeOfWorkSelected.multiLaneUndivided
        case pathIndexRow == 2: return typeOfWorkSelected.multilaneDivided
        default: return .potentialError
        }
    }
       class  func storyboardNavigation(delegate: DiagramNumber) -> StoryBoardID.RawValue {
        let isAnActualNumber = Int(delegate.rawValue)
        if isAnActualNumber != nil { return StoryBoardID.showDiagram.rawValue
            } else if delegate == .table52 { return StoryBoardID.table52.rawValue
            } else if delegate == .table53 { return StoryBoardID.table53.rawValue
            } else if delegate == .table54 { return StoryBoardID.table54.rawValue
            } else if delegate == .table55 { return StoryBoardID.table55.rawValue
            } else if delegate == .bridgework { return StoryBoardID.bridgeWork.rawValue
            } else { return StoryBoardID.potentialError.rawValue
            }
        }
}
enum table52AADT: String {
    case LesserThan400 = "AADT: 0 - 400"
    case Over400 = "AADT: Over 400"
    
    
    var Minor: DiagramNumber {
        switch self {
        case .LesserThan400: return DiagramNumber.diagram1
        case .Over400: return DiagramNumber.diagram3and11
        }
    }
    
    var None: DiagramNumber {
        switch self {
        case .LesserThan400: return .diagram3and11
        case .Over400: return .diagram3and10
        }
    }
}








