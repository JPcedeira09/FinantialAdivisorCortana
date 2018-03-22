//
//  ADVMetasViewController.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 19/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVMetasViewController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.dataSource = self
        self.table.delegate = self
        
        
        self.table.register(UINib(nibName: "ADVHeaderMetaTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVHeaderMetaTableViewCell")
        
        self.table.register(UINib(nibName: "ADVGraficoMetaTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVGraficoMetaTableViewCell")
        
        self.table.register(UINib(nibName: "ADVSavingTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVSavingTableViewCell")
        
        self.table.register(UINib(nibName: "ADVMesesTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVMesesTableViewCell")
        self.table.register(UINib(nibName: "ADVFooterMetaTableViewCell", bundle: nil), forCellReuseIdentifier: "ADVFooterMetaTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ADVMetasViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVHeaderMetaTableViewCell") as! ADVHeaderMetaTableViewCell
            
            cell.valorHeaderMeta.text = "4.908,98"
            
            return cell
        }
        else if indexPath.row == 1 {
            
            let cell = table.dequeueReusableCell(withIdentifier: "ADVGraficoMetaTableViewCell") as! ADVGraficoMetaTableViewCell
            
            return cell
            
            
        } else if indexPath.row == 2 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVSavingTableViewCell") as! ADVSavingTableViewCell

            cell.meses.text = "4 MESES"
            cell.valorSaving.text = "1.298,97"
            
            return cell
        }else if indexPath.row == 3 {
            let cell = table.dequeueReusableCell(withIdentifier: "ADVMesesTableViewCell") as! ADVMesesTableViewCell

            cell.valor.text = "468,76"
            
            return cell
        }
        else{
            let cell = table.dequeueReusableCell(withIdentifier: "ADVFooterMetaTableViewCell") as! ADVFooterMetaTableViewCell
            
            return cell
        }
    }
    
}

extension ADVMetasViewController{
    
    func confBar(){
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().barTintColor = UIColor.black
        
    }
}
