//
//  UIViewController+TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Fabio Fiorita on 28/12/20.
//

import Foundation
import UIKit

extension UIViewController {
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
