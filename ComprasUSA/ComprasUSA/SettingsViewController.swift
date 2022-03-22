//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Fabio Fiorita on 23/12/20.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfDolar.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfDolar.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    

    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)
    }
    

}



extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
