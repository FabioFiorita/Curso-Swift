//
//  Place.swift
//  QueroConhecer
//
//  Created by Fabio Fiorita on 04/01/21.
//

import Foundation
import MapKit

struct Place: Codable {
    let name: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let address: String
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static func getFormattedAdress(with placemark: CLPlacemark) -> String {
        var adress = " "
        if let street = placemark.thoroughfare {
            adress += street //Rua
        }
        if let number = placemark.subThoroughfare {
            adress += " \(number)" //Número
        }
        if let subLocality = placemark.subLocality {
            adress += ", \(subLocality)" //Bairro
        }
        if let city = placemark.locality {
            adress += "\n \(city)" //Cidade
        }
        if let state = placemark.administrativeArea {
            adress += " - \(state)" //Estado
        }
        if let postalCode = placemark.postalCode {
            adress += "\nCEP: \(postalCode)" //CEP
        }
        if let country = placemark.country {
            adress += "\n \(country)" //País
        }
        return adress
    }
}


extension Place: Equatable {
    static func ==(lhs: Place, rhs: Place) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
