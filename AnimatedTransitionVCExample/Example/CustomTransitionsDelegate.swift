//
//  CustomTransitionsDelegate.swift
//  AnimatedTransitionVCExample
//
//  Created by Artem Mushtakov on 15.05.2022.
//

import UIKit

class CustomTransitionsDelegate: NSObject, UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CustomTransitionsAnimates()
    }
}
