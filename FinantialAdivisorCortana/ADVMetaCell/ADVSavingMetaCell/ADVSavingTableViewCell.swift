//
//  ADVSavingTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 19/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVSavingTableViewCell: UITableViewCell {

    @IBOutlet weak var meses: UILabel!
    @IBOutlet weak var valorSaving: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
