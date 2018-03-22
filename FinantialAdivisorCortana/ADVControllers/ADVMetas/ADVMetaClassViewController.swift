//
//  ADVMetaClassViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 20/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ADVMetaClassViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "ADVFooterClassTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVFooterClassTableViewCell")
        self.table.register(UINib(nibName: "ADVGraficoTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVGraficoTableViewCell")
        self.table.register(UINib(nibName: "ADVGatosEDatasTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVGatosEDatasTableViewCell")
        self.table.register(UINib(nibName: "ADVValorClassTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVValorClassTableViewCell")
        
    }
    
}

extension ADVMetaClassViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = table.dequeueReusableCell(withIdentifier: "ADVFooterClassTableViewCell") as! ADVFooterClassTableViewCell
            cell.categoria.text = "Alimentação"
            cell.imageClass.image = #imageLiteral(resourceName: "restaurant")
            cell.mes.text = "Abril"
            return cell
            
        }else if indexPath.row == 1{
           let cell = table.dequeueReusableCell(withIdentifier: "ADVGraficoTableViewCell") as! ADVGraficoTableViewCell
              //let cell = table.dequeueReusableCell(withIdentifier: "ADVGatosEDatasTableViewCell") as! ADVGatosEDatasTableViewCell
            return cell
            
        }else if indexPath.row == 2{
            let cell = table.dequeueReusableCell(withIdentifier: "ADVGatosEDatasTableViewCell") as! ADVGatosEDatasTableViewCell
            cell.gastos.text = "456.98"
            cell.dataEntrada.text = "01/04/2018 á 20/04/2018"
            cell.dataSaida.text = "01/03/2018 á 28/03/2018"
            return cell
            
        }else {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVValorClassTableViewCell") as! ADVValorClassTableViewCell
            cell.valor.text = "234.76"
            cell.valorAnterior.text = "346.09"
            return cell
            
        }
        
    }
    
}

extension ADVMetaClassViewController{
    
    func confBar(){
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
    }
}
