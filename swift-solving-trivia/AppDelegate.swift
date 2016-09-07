//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(trivia: [String : String] ) -> String {
        
        var whatState = ""
        
        for (state, capital) in trivia {
            let stateArr = Set(Array(state.lowercaseString.characters))
            let capArr = Set(Array(capital.lowercaseString.characters))
            let commonLetters = Array(stateArr.intersect(capArr))
            
            if commonLetters.count == 0 {
                whatState = state
            }
        }
        
        return whatState
        
    }
    
    
}
