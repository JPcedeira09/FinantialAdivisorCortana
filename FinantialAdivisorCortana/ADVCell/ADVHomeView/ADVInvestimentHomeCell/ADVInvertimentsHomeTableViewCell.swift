//
//  ADVInvertimentsHomeTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 14/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVInvertimentsHomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewMae: UIView!
    @IBOutlet weak var graficoView: UIView!
    @IBOutlet weak var valor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
