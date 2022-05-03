//
//  SpringAnimationViewController.swift
//  SpringAnimation
//
//  Created by Karen Tsarukian on 27.04.2022.
//

import Spring

class SpringAnimationViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationOptionsLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        animationOptionsLabel.text = animation.description
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        animationOptionsLabel.text = animation.description
        
        animationView.animation = animation.animationPreset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.velocity = CGFloat(animation.velocity)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.animationPreset)", for: .normal)
    }
    
}

