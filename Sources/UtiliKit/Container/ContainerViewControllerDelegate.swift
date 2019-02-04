//
//  ContainerViewControllerDelegate.swift
//  UtiliKit
//
//  Copyright © 2018 Bottle Rocket Studios. All rights reserved.
//

import UIKit

public protocol ContainerViewControllerDelegate: class {
    
    func containerViewController(_ container: ContainerViewController,
                                 animationControllerForTransitionFrom source: UIViewController,
                                 to destination: UIViewController) -> UIViewControllerAnimatedTransitioning?
    
    func containerViewController(_ container: ContainerViewController,
                                 interactionControllerForTransitionFrom source: UIViewController,
                                 to destination: UIViewController) -> ContainerPercentDrivenInteractiveTransitioning?
    
    func containerViewController(_ container: ContainerViewController, didBeginTransitioningFrom source: UIViewController, to destination: UIViewController)
    func containerViewController(_ container: ContainerViewController, didFinishTransitioningFrom source: UIViewController, to destination: UIViewController)
    
    func containerViewController(_ container: ContainerViewController, shouldTransitionFrom source: UIViewController, to destination: UIViewController) -> Bool
}

public extension ContainerViewControllerDelegate {
    
    func containerViewController(_ container: ContainerViewController,
                                 animationControllerForTransitionFrom source: UIViewController,
                                 to destination: UIViewController) -> UIViewControllerAnimatedTransitioning? { return .none }
    
    func containerViewController(_ container: ContainerViewController,
                                 interactionControllerForTransitionFrom source: UIViewController,
                                 to destination: UIViewController) -> UIViewControllerInteractiveTransitioning? { return .none }
    
    func containerViewController(_ container: ContainerViewController, shouldTransitionFrom source: UIViewController, to destination: UIViewController) -> Bool { return true }
    
    func containerViewController(_ container: ContainerViewController, didBeginTransitioningFrom source: UIViewController, to destination: UIViewController) { }
    func containerViewController(_ container: ContainerViewController, didFinishTransitioningFrom source: UIViewController, to destination: UIViewController) { }
}
