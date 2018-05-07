//
//  ADVPopUpSimularViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 27/03/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVPopUpSimularViewController: UIViewController {
    
    @IBOutlet weak var textInfo1: UITextView!
    @IBOutlet weak var viewPopUp: UIView!

    @IBAction func moreBtn(_ sender: UIButton) {
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpAdvisorOpen") as! ADVPopUpSimularOpenViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBOutlet weak var imageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textInfo1.isEditable = false
        imageView.layer.cornerRadius = 5
        self.view.backgroundColor = UIColor.clear
        
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
