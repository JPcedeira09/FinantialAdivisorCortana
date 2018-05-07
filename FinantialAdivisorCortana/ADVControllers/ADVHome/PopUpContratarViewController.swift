//
//  PopUpContratarViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 26/03/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class PopUpContratarViewController: UIViewController {
    
    @IBOutlet weak var popUp: UIView!
    
    @IBOutlet weak var btnNao: UIButton!
    
    @IBOutlet weak var btnSim: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUp.layer.cornerRadius = 5
        btnNao.layer.cornerRadius = 5
        btnSim.layer.cornerRadius = 5
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.showAnimate()
    }
    
    @IBAction func closeOnBtn(_ sender: AnyObject) {
        self.removeAnimate()
        //self.view.removeFromSuperview()
    }
    
    @IBAction func closePopOnX(_ sender: AnyObject) {
        self.removeAnimate()
        //self.view.removeFromSuperview()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    
}
