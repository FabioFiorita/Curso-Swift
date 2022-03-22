//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by Fabio Fiorita on 14/01/21.
//


import UIKit
import CoreData


extension UIViewController {
    
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
