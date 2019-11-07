import Foundation
import CoreLocation

struct getLocation {
    static func getData(name: String, type: String)-> Data {
        guard let path = Bundle.main.path(forResource: name, ofType: type)
    else {
    fatalError("\(name) \(type) file not found")
    }
        let internalUrl = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: internalUrl)
            return data
        }catch {
               fatalError("An error has occured: \(error)")
        }
    }}
