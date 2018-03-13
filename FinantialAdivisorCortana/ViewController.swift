//
//  ViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 27/02/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foto: UIImageView!

    @IBOutlet weak var statusBar: UIView!
  
    @IBOutlet weak var santanderIcon: UIImageView!
    
    @IBOutlet weak var viewContaCorrente: UIView!
    
    @IBOutlet weak var viewEmprestimo: UIView!
    
    @IBOutlet weak var viewCartao: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statusBar.layer.cornerRadius = 3
        
        santanderIcon.layer.cornerRadius = santanderIcon.frame.width/2
        
        santanderIcon.clipsToBounds = true
        
        foto.layer.cornerRadius = foto.frame.width/2
        foto.clipsToBounds = true
        
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
        viewCartao.layer.cornerRadius = 5
        viewContaCorrente.layer.cornerRadius = 5
        viewEmprestimo.layer.cornerRadius = 5

        
    }
    @IBAction func segue(_ sender: Any) {
        
        performSegue(withIdentifier: "seguecc", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

