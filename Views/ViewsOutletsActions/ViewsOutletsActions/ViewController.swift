//
//  ViewController.swift
//  ViewsOutletsActions
//
//  Created by Fabio Fiorita on 08/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSomething(_ sender: UIButton) {
        print("runSomething")
    }
    
    @IBAction func doSomething(_ sender: UIButton, forEvent event: UIEvent) {
        print("doSomething")
    }
    
    @IBAction func change(_ sender: Any) {
        print("change")
    }
    
}

