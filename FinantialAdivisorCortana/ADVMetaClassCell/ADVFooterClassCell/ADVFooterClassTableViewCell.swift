//
//  ADVFooterClassTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 19/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVFooterClassTableViewCell: UITableViewCell {

    @IBOutlet weak var imageClass: UIImageView!
    @IBOutlet weak var categoria: UILabel!
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
