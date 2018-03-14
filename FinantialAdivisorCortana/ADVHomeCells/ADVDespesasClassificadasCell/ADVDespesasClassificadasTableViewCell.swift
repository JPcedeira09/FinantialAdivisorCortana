//
//  ADVDespesasClassificadasTableViewCell.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 13/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ADVDespesasClassificadasTableViewCell: UITableViewCell {

    @IBOutlet weak var viewArrendondado: UIView!
    @IBOutlet weak var iconDescricao: UIImageView!
    @IBOutlet weak var titleDescricao: UILabel!
    @IBOutlet weak var gastoValor: UILabel!
    @IBOutlet weak var porcentagemRespectivaAoTotal: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
