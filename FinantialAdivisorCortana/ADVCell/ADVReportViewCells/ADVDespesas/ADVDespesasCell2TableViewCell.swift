//
//  ADVDespesasCell2TableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 12/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVDespesasCell2TableViewCell: UITableViewCell {

    @IBOutlet weak var viewArendondar: UIView!
    @IBOutlet weak var imageGasto: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var valorPgamento: UILabel!
    @IBOutlet weak var mes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
