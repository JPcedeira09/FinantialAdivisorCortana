//
//  ADVDespesas.swift
//  FinantialAdivisorCortana
//
//  Created by João Paulo  Tieles on 13/03/18.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import Foundation
import UIKit

enum Mes:String {
    case Jan
    case Fev
    case Mar
    case Abr
    case Mai
    case Jun
    case Jul
    case Ags
    case Set
    case Out
    case Nov
    case Dez
}
class ADVDespesas {
    
    var image:UIImage
    var title:String
    var descricao:String
    var valor:Double
    var mes:Mes
    init(image:UIImage,title:String,descricao:String,valor:Double, mes: Mes) {
        self.image = image
        self.title = title
        self.descricao = descricao
        self.valor = valor
        self.mes = mes
    }
}
