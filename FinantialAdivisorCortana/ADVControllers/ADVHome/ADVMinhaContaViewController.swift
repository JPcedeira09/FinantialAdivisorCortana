//
//  ADVMinhaContaViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 14/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit
import RKPieChart

class ADVMinhaContaViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var imageBanco: UIImageView!
    @IBOutlet weak var imgPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confBar()
        imgLogo()
        
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "ADVHomeccTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVHomeccTableViewCell")
        self.table.register(UINib(nibName: "ADVCreditCardTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVCreditCardTableViewCell")
        self.table.register(UINib(nibName: "ADVInvertimentsHomeTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVInvertimentsHomeTableViewCell")
        self.table.register(UINib(nibName: "ADVHomeEmprestimTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVHomeEmprestimTableViewCell")

        
    }
    
}


extension ADVMinhaContaViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVHomeccTableViewCell") as! ADVHomeccTableViewCell
            
            cell.viewMae.layer.cornerRadius = 3
            cell.valorCC.text = String(400.90)
            cell.viewbordinha.layer.cornerRadius = 2
            
            return cell
        }
        else if indexPath.row == 1 {
            
            let cell = table.dequeueReusableCell(withIdentifier: "ADVCreditCardTableViewCell") as! ADVCreditCardTableViewCell
            
            cell.viewMae.layer.cornerRadius = 3
            let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
            let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
            let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)

            let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "70%")
            chartView.circleColor = .clear
            chartView.translatesAutoresizingMaskIntoConstraints = false
            chartView.arcWidth = 15
            
            chartView.isIntensityActivated = false
            chartView.style = .butt
            chartView.isTitleViewHidden = true
            chartView.isAnimationActivated = true
            cell.graficoView.addSubview(chartView)
            chartView.widthAnchor.constraint(equalToConstant: 72).isActive = true
            chartView.heightAnchor.constraint(equalToConstant: 72).isActive = true
            chartView.centerXAnchor.constraint(equalTo: cell.graficoView.centerXAnchor).isActive = true
            chartView.centerYAnchor.constraint(equalTo: cell.graficoView.centerYAnchor).isActive = true
            
            cell.valor.text = String(600.8)
            
            return cell

            
        } else if indexPath.row == 2 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVHomeEmprestimTableViewCell") as! ADVHomeEmprestimTableViewCell
            
            cell.viewMae.layer.cornerRadius = 3
            cell.valor.text = String(400.90)
            
            return cell
        }else if indexPath.row == 3 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVInvertimentsHomeTableViewCell") as! ADVInvertimentsHomeTableViewCell
            
            cell.valor.text = String(400.90)
            cell.viewMae.layer.cornerRadius = 3

            
            let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
            let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
            let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
            
            let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "30%")
            chartView.circleColor = .clear
            chartView.translatesAutoresizingMaskIntoConstraints = false
            chartView.arcWidth = 15
            
            chartView.isIntensityActivated = false
            chartView.style = .butt
            chartView.isTitleViewHidden = true
            chartView.isAnimationActivated = true
            cell.graficoView.addSubview(chartView)
            chartView.widthAnchor.constraint(equalToConstant: 72).isActive = true
            chartView.heightAnchor.constraint(equalToConstant: 72).isActive = true
            chartView.centerXAnchor.constraint(equalTo: cell.graficoView.centerXAnchor).isActive = true
            chartView.centerYAnchor.constraint(equalTo: cell.graficoView.centerYAnchor).isActive = true
            
            return cell

        }
            
        else{
            let cell = table.dequeueReusableCell(withIdentifier: "ADVHomeEmprestimTableViewCell") as! ADVHomeEmprestimTableViewCell
            
            cell.valor.text = String(400.90)
            cell.viewMae.layer.cornerRadius = 3

            return cell
        }
    }
    
}

extension ADVMinhaContaViewController{
    
    func imgLogo(){
        imgPerfil.layer.cornerRadius = imgPerfil.frame.width/2
        
        imgPerfil.clipsToBounds = true
        
        imageBanco.layer.cornerRadius = imageBanco.frame.width/2
        imageBanco.clipsToBounds = true
        
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
        
    }
    func confBar(){
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
    }
}

