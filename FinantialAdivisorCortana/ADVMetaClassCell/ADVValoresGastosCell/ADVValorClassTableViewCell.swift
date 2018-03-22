//
//  ADVValorClassTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 19/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVValorClassTableViewCell: UITableViewCell {

    @IBOutlet weak var valor: UILabel!
    @IBOutlet weak var valorAnterior: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
