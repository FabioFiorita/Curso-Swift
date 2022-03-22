//
//  ViewController.swift
//  NavigationController
//
//  Created by Fabio Fiorita on 08/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
}

