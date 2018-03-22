//
//  ADVHomeViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 14/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit
import ExpandableCell
import RKPieChart

class ADVHomeViewController: UIViewController {
    
    @IBOutlet weak var imageBanco: UIImageView!
    @IBOutlet weak var imgPerfil: UIImageView!
    @IBOutlet weak var table: ExpandableTableView!
    
    var listHomeCell : [ADVHomeCell]?
    
    let celCredito = ADVHomeCell(title: "Cartão de crédito", imageCell: #imageLiteral(resourceName: "ic_card"))
    let celEmprestimo = ADVHomeCell(title: "Empréstimo", imageCell:#imageLiteral(resourceName: "icEmprestimo") )
    let cellInvestimento = ADVHomeCell(title: "Investimentos", imageCell: #imageLiteral(resourceName: "ic_investimento"))
    let cellCC = ADVHomeCell(title: "Conta corrente", imageCell: #imageLiteral(resourceName: "icContaCorrente"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confBar()
        imgLogo()
        
        let titulos = [celCredito, celEmprestimo, cellInvestimento, cellCC]
        self.listHomeCell = titulos
        
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "ADVContaCorrenteTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVContaCorrenteTableViewCell")
        self.table.register(UINib(nibName: "ADVCartaoTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVCartaoTableViewCell")
        self.table.register(UINib(nibName: "ADVEmprestimoTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVEmprestimoTableViewCell")
        self.table.register(UINib(nibName: "ADVInvestimentoTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVInvestimentoTableViewCell")
        self.table.register(UINib(nibName: "ADVTitleExpandableTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVTitleExpandableTableViewCell")
             self.table.register(UINib(nibName: "FooterTableViewCell", bundle: nil), forCellReuseIdentifier: "FooterTableViewCell")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ADVHomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return (listHomeCell?.count)!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = table.dequeueReusableCell(withIdentifier: "ADVTitleExpandableTableViewCell") as! ADVTitleExpandableTableViewCell
        
        switch (section) {
            
        case 0:
            cell.imageExpandable.image = #imageLiteral(resourceName: "icContaCorrente")
            cell.titleExpandable.text = "Conta corrente"
            return cell
            
        case 1:
            cell.imageExpandable.image = #imageLiteral(resourceName: "ic_card")
            cell.titleExpandable.text = "Cartão de crédito"
            return cell
            
        case 2:
            cell.imageExpandable.image = #imageLiteral(resourceName: "icEmprestimo")
            cell.titleExpandable.text = "Empréstimo"
            return cell
            
        case 3:
            cell.imageExpandable.image = #imageLiteral(resourceName: "ic_investimento")
            cell.titleExpandable.text = "Investimentos"
            return cell
            
        default:
            print("nada")
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch (indexPath.section) {
        case 0:
            
            let cell = table.dequeueReusableCell(withIdentifier: "ADVContaCorrenteTableViewCell") as! ADVContaCorrenteTableViewCell
            
            cell.valor.text = String(400.90)
            cell.viewbordinha.layer.cornerRadius = 2
            return cell
            
        case 1:
            let cell = table.dequeueReusableCell(withIdentifier: "ADVCartaoTableViewCell") as! ADVCartaoTableViewCell
            
            let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
            let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
            let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
            
            let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "")
            chartView.circleColor = .clear
            chartView.translatesAutoresizingMaskIntoConstraints = false
            chartView.arcWidth = 25
            
            chartView.isIntensityActivated = false
            chartView.style = .butt
            chartView.isTitleViewHidden = true
            chartView.isAnimationActivated = true
            cell.viewGrafico.addSubview(chartView)
            chartView.widthAnchor.constraint(equalToConstant: 100).isActive = true
            chartView.heightAnchor.constraint(equalToConstant: 100).isActive = true
            chartView.centerXAnchor.constraint(equalTo: cell.viewGrafico.centerXAnchor).isActive = true
            chartView.centerYAnchor.constraint(equalTo: cell.viewGrafico.centerYAnchor).isActive = true
            
            cell.gasto.text = String(600.8)
            
            return cell
            
        case 2:
            let cell = table.dequeueReusableCell(withIdentifier: "ADVEmprestimoTableViewCell") as! ADVEmprestCell
            
            cell.valor.text = String(400.90)
            
            return cell
        case 3:
            let cell = table.dequeueReusableCell(withIdentifier: "ADVInvestimentoTableViewCell") as! ADVInvestimentoTableViewCell
            
            cell.valor.text = String(400.90)
            
            
            let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
            let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
            let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
            
            let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "50%")
            chartView.circleColor = .clear
            chartView.translatesAutoresizingMaskIntoConstraints = false
            chartView.arcWidth = 25
            
            chartView.isIntensityActivated = false
            chartView.style = .butt
            chartView.isTitleViewHidden = true
            chartView.isAnimationActivated = true
            cell.grafico.addSubview(chartView)
            chartView.widthAnchor.constraint(equalToConstant: 90).isActive = true
            chartView.heightAnchor.constraint(equalToConstant: 90).isActive = true
            chartView.centerXAnchor.constraint(equalTo: cell.grafico.centerXAnchor).isActive = true
            chartView.centerYAnchor.constraint(equalTo: cell.grafico.centerYAnchor).isActive = true
            
            return cell
            
        default:
            let cell = table.dequeueReusableCell(withIdentifier: "ADVEmprestimoTableViewCell") as! ADVEmprestCell
            
            cell.valor.text = String(400.90)
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = table.dequeueReusableCell(withIdentifier: "FooterTableViewCell") as! FooterTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
}

extension ADVHomeViewController{
    
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

/*
 extension ADVHomeViewController : ExpandableDelegate{
 func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
 
 return [350.0]
 }
 
 
 func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
 
 if indexPath.row == 0 {
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVContaCorrenteTableViewCell") as! ADVContaCorrenteTableViewCell
 
 cell.valor.text = String(400.90)
 cell.viewbordinha.layer.cornerRadius = 2
 
 return [cell]
 }
 else if indexPath.row == 1 {
 
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVCartaoTableViewCell") as! ADVCartaoTableViewCell
 
 let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
 let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
 let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
 
 let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "")
 chartView.circleColor = .clear
 chartView.translatesAutoresizingMaskIntoConstraints = false
 chartView.arcWidth = 40
 
 chartView.isIntensityActivated = false
 chartView.style = .butt
 chartView.isTitleViewHidden = true
 chartView.isAnimationActivated = true
 cell.viewGrafico.addSubview(chartView)
 chartView.widthAnchor.constraint(equalToConstant: 150).isActive = true
 chartView.heightAnchor.constraint(equalToConstant: 150).isActive = true
 chartView.centerXAnchor.constraint(equalTo: cell.viewGrafico.centerXAnchor).isActive = true
 chartView.centerYAnchor.constraint(equalTo: cell.viewGrafico.centerYAnchor).isActive = true
 
 cell.gasto.text = String(600.8)
 
 return [cell]
 
 } else if indexPath.row == 2 {
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVEmprestimoTableViewCell") as! ADVEmprestimoTableViewCell
 
 cell.valor.text = String(400.90)
 
 return [cell]
 }else if indexPath.row == 3 {
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVInvestimentoTableViewCell") as! ADVInvestimentoTableViewCell
 
 cell.valor.text = String(400.90)
 
 
 let firstItem: RKPieChartItem = RKPieChartItem(ratio: 50, color: UIColor.orange)
 let secondItem: RKPieChartItem = RKPieChartItem(ratio: 30, color: UIColor.gray)
 let thirdItem: RKPieChartItem = RKPieChartItem(ratio: 20, color: UIColor.yellow)
 
 let chartView = RKPieChartView(items: [firstItem, secondItem, thirdItem], centerTitle: "")
 chartView.circleColor = .clear
 chartView.translatesAutoresizingMaskIntoConstraints = false
 chartView.arcWidth = 50
 
 chartView.isIntensityActivated = false
 chartView.style = .butt
 chartView.isTitleViewHidden = true
 chartView.isAnimationActivated = true
 cell.grafico.addSubview(chartView)
 chartView.widthAnchor.constraint(equalToConstant: 90).isActive = true
 chartView.heightAnchor.constraint(equalToConstant: 90).isActive = true
 chartView.centerXAnchor.constraint(equalTo: cell.grafico.centerXAnchor).isActive = true
 chartView.centerYAnchor.constraint(equalTo: cell.grafico.centerYAnchor).isActive = true
 
 return [cell]
 
 }
 
 else{
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVEmprestimoTableViewCell") as! ADVEmprestimoTableViewCell
 
 cell.valor.text = String(400.90)
 
 return [cell]
 }
 }
 
 func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
 let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ADVTitleExpandableTableViewCell") as! ADVTitleExpandableTableViewCell
 
 let titlesIndex = self.listHomeCell![indexPath.row]
 
 cell.imageExpandable.image = titlesIndex.imageCell
 cell.titleExpandable.text = titlesIndex.title
 
 return cell
 
 }
 
 func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
 
 return self.listHomeCell!.count
 }
 
 func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
 
 return 100.0
 }
 }
 */
