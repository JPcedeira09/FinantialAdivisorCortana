//
//  ADVHomeccTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 14/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVHomeccTableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewMae: UIView!
    @IBOutlet weak var valorCC: UILabel!
    @IBOutlet weak var viewbordinha: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
