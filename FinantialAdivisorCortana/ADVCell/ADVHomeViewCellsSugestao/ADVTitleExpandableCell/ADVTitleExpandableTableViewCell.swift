//
//  ADVTitleExpandableTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 14/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVTitleExpandableTableViewCell: UITableViewCell {

    @IBOutlet weak var imageExpandable: UIImageView!
    @IBOutlet weak var titleExpandable: UILabel!
    @IBOutlet weak var btnOcultar: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
