//
//  ADVPopUpContratarViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 28/03/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVPopUpContratarViewController: UIViewController {
    
    @IBOutlet weak var textInfo1: UITextView!
    @IBOutlet weak var textInfo2: UITextView!
    @IBOutlet weak var btnPopUp: UIView!
    @IBOutlet weak var btnContratar: UIButton!
    @IBOutlet weak var btnVoltar: UIButton!
    
    @IBAction func ContratarAMeta(_ sender: UIButton) {
        ADVAlert(titulo: "Meta Contratada!", menssagem: "Vá a suas metas e acompanhe sua meta.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInfo1.isEditable = false
        textInfo2.isEditable = false
        btnPopUp.layer.cornerRadius = 5
        btnContratar.layer.cornerRadius = 5
        btnVoltar.layer.cornerRadius = 5
        self.view.backgroundColor = UIColor.clear
        self.showAnimate()
    }
    
    @IBAction func closeOnBtn(_ sender: AnyObject) {
        self.removeAnimate()
    }
    
    func ADVAlert(titulo : String , menssagem : String){
        
        let alertController = UIAlertController(title: titulo, message: menssagem, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .destructive) { (action:UIAlertAction) in
            
        self.performSegue(withIdentifier: "contratada", sender: nil)}
        alertController.addAction(action)
        self.present(alertController, animated: true)
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
