//
//  ScaleSegue.swift
//  LazyTourist
//
//  Created by Richard Repas on 16/04/2018.
//  Copyright © 2018 Nico aka Babou le barbar. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue
{
    override func perform()
    {
        scale()
    }
    func scale()
    {
        let toViewController = self.destination
        let fromViewController = self.source
        
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        toViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewController.view.center = originalCenter
        
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewController.view.transform = CGAffineTransform.identity
        }, completion: {sucess in
            fromViewController.present(toViewController, animated: false, completion: nil)
        })
    }
}
