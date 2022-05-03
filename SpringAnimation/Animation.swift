//
//  Animation.swift
//  SpringAnimation
//
//  Created by Karen Tsarukian on 27.04.2022.
//

import Foundation

struct Animation {
    let animationPreset: String
    let curve: String
    let force: Float
    let duration: Float
    let velocity: Float
    
    var description: String {
"""
    animationPreset: \(animationPreset)
    curve: \(curve)
    force: \(String(format: "%.2f", force))
    duration: \(String(format: "%.2f", duration))
    velocity: \(String(format: "%.2f", velocity))
"""
    }
}

extension Animation {
    
    static func getRandomAnimation() -> Animation {
        Animation(
            animationPreset: DataManager.shared.animationPreset.randomElement()?.rawValue ?? "shake",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0.2...1),
            duration: Float.random(in: 0.3...2),
            velocity: Float.random(in: 0.2...2)
        )
    }
}
