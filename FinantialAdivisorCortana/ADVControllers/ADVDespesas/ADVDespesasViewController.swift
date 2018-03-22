//
//  ADVDespesasViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 13/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit
import RKPieChart

class ADVDespesasViewController: UIViewController {
    
    @IBOutlet weak var tableDespesas: UITableView!
    
    @IBOutlet weak var graficoAcompanhamento: UIView!
    
    var cor1 = UIColor()
    var cor2 = UIColor()
    var cor3 = UIColor()
    var cor4 = UIColor()
    var cor5 = UIColor()
    var cor6 = UIColor()
    var cor7 = UIColor()
    var cor8 = UIColor()
    var cor9 = UIColor()
    var cor10 = UIColor()
    var cor11 = UIColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeColor()
        
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
        posicionaGrafico()
        
        self.tableDespesas.delegate = self
        
        self.tableDespesas.dataSource = self
        
        self.tableDespesas.register(UINib(nibName: "ADVGraficoPieableViewCell", bundle: nil), forCellReuseIdentifier: "ADVGraficoPieableViewCell")
        self.tableDespesas.register(UINib(nibName: "ADVDespesasClassificadasTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVDespesasClassificadasTableViewCell")
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ADVDespesasViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "avatar")
            cell.titleDescricao.text = "Despesas pessoais"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.lightGray
            cell.viewArrendondado.clipsToBounds = true


            return cell
            
        }
        else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "bill")
            cell.titleDescricao.text = "Impostos e Taxas"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.purple
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "student")
            cell.titleDescricao.text = "Educação"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.magenta
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "hospital")
            cell.titleDescricao.text = "Saúde"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.orange
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 4 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "purchage")
            cell.titleDescricao.text = "Dívidas"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.cyan
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 5 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "restaurant")
            cell.titleDescricao.text = "Alimentação"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.yellow
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 6 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "water_park")
            cell.titleDescricao.text = "Lazer"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.red
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 7 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "home")
            cell.titleDescricao.text = "Moradia"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.blue
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 8 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "car")
            cell.titleDescricao.text = "Transporte"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.brown
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }
        else if indexPath.row == 9 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "money")
            cell.titleDescricao.text = "Renda"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.green
            cell.viewArrendondado.clipsToBounds = true

            return cell
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasClassificadasTableViewCell") as! ADVDespesasClassificadasTableViewCell
            
            cell.gastoValor.text = "R$ "+String("45.9")
            cell.iconDescricao.image = #imageLiteral(resourceName: "outro")
            cell.titleDescricao.text = "Outros"
            cell.porcentagemRespectivaAoTotal.text = "% "+String(4.6)
            cell.viewArrendondado.layer.cornerRadius = cell.viewArrendondado.frame.width/2
            cell.viewArrendondado.backgroundColor = UIColor.gray
            cell.viewArrendondado.clipsToBounds = true

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segueTransacoes", sender: nil)
    }
    
}

extension ADVDespesasViewController {
    
    func initializeColor(){
         cor1 = UIColor(red: 102, green: 178, blue: 255, alpha: 1.0)
         cor2 = UIColor(red: 255, green: 229, blue: 204, alpha: 1.0)
         cor3 = UIColor(red: 204, green: 229, blue: 255, alpha: 1.0)
         cor4 = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
         cor5 = UIColor(red: 204, green: 204, blue: 255, alpha: 1.0)
         cor6 = UIColor(red: 153, green: 255, blue: 51, alpha: 1.0)
         cor7 = UIColor(red: 255, green: 102, blue: 102, alpha: 1.0)
         cor8 = UIColor(red: 255, green: 178, blue: 102, alpha: 1.0)
         cor9 = UIColor(red: 255, green: 255, blue: 153, alpha: 1.0)
         cor10 = UIColor(red: 102, green: 255, blue: 178, alpha: 1.0)
         cor11 = UIColor(red: 255, green: 204, blue: 229, alpha: 1.0)
    }
    
    func posicionaGrafico(){
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
        self.graficoAcompanhamento.addSubview(chartView)
        chartView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        chartView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        chartView.centerXAnchor.constraint(equalTo: self.graficoAcompanhamento.centerXAnchor).isActive = true
        chartView.centerYAnchor.constraint(equalTo: self.graficoAcompanhamento.centerYAnchor).isActive = true
    }
}

extension UITableView {
    func reloadData(with animation: UITableViewRowAnimation) {
        reloadSections(IndexSet(integersIn: 0..<numberOfSections), with: animation)
    }
}
