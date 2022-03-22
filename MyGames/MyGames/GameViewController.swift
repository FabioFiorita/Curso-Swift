//
//  GameViewController.swift
//  MyGames
//
//  Created by Fabio Fiorita on 13/01/21.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbConsole: UILabel!
    @IBOutlet weak var lbReleaseDate: UILabel!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Game!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        lbTitle.text = game.title
        lbConsole.text = game.console?.name
        if let releaseDate = game.releaseDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.locale = Locale(identifier: "pt-BR")
            lbReleaseDate.text = "Lançamento: " + formatter.string(from: releaseDate)
            
        }
        if let image = game.cover as? UIImage {
            ivCover.image = image
        } else {
            ivCover.image = UIImage(named: "noCoverFull")
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddEditViewController
        vc.game = game
    }

 

}
