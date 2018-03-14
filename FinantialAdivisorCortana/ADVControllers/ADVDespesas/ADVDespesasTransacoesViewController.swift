//
//  ADVDespesasTransacoesViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 13/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVDespesasTransacoesViewController: UIViewController {
    
        var comprar1 = ADVDespesas(image: #imageLiteral(resourceName: "home"), title: "Mercado", descricao: "Joanin Santa Paulo", valor: -234.90, mes: Mes.Abr)
    var comprar2 = ADVDespesas(image: #imageLiteral(resourceName: "hospital"), title: "Farmacia", descricao: "Farmacia Vila Olimpia", valor: -34.90, mes: Mes.Jun)
    var comprar3 = ADVDespesas(image: #imageLiteral(resourceName: "car"), title: "Mecanico", descricao: "Mecanica JK", valor: -634.90, mes: Mes.Jul)
    var comprar4 = ADVDespesas(image: #imageLiteral(resourceName: "money"), title: "Salario", descricao: "Santander", valor: 10000.90, mes: Mes.Dez)
    var comprar5 = ADVDespesas(image: #imageLiteral(resourceName: "student"), title: "Curso", descricao: "Caelum Inovação", valor: -2034.90, mes: Mes.Set)
    var comprar6 = ADVDespesas(image: #imageLiteral(resourceName: "student"), title: "Curso", descricao: "Caelum Inovação", valor: -2034.90, mes: Mes.Ags)
    var comprar7 = ADVDespesas(image: #imageLiteral(resourceName: "student"), title: "Curso", descricao: "Caelum Inovação", valor: -2034.90, mes: Mes.Mai)
    var comprar8 = ADVDespesas(image: #imageLiteral(resourceName: "student"), title: "Curso", descricao: "Caelum Inovação", valor: -2034.90, mes: Mes.Fev)

    var gastos:[ADVDespesas]?
    
    @IBOutlet weak var table:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let mockGastos = [self.comprar1, self.comprar2, self.comprar3, self.comprar4,self.comprar5,self.comprar6,self.comprar7,self.comprar8]
        
        self.gastos = mockGastos
        
        self.table.delegate = self
        self.table.dataSource = self
        self.table.register(UINib(nibName: "ADVDespesasCell2TableViewCell", bundle: nil), forCellReuseIdentifier: "ADVDespesasCell2TableViewCell")
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

extension ADVDespesasTransacoesViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gastos!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ADVDespesasCell2TableViewCell", for: indexPath) as! ADVDespesasCell2TableViewCell
        
        let gastosIndex = self.gastos![indexPath.row]
        
        cell.descricao.text = gastosIndex.descricao
        cell.imageGasto.image = #imageLiteral(resourceName: "transacao")
        cell.title.text = gastosIndex.title
        cell.valorPgamento.text = "R$ "+String(gastosIndex.valor)
        cell.viewArendondar.layer.cornerRadius = cell.viewArendondar.frame.width/2
        cell.viewArendondar.clipsToBounds = true

        cell.mes.text = gastosIndex.mes.rawValue
        
        return cell
    }
    
    
    
}
