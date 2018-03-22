//
//  ADVGatosEDatasTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 20/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVGatosEDatasTableViewCell: UITableViewCell {

    @IBOutlet weak var gastos: UILabel!
    @IBOutlet weak var dataEntrada: UILabel!
    @IBOutlet weak var dataSaida: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
