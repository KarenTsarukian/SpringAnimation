//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Karen Tsarukian on 27.04.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animationPreset = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
