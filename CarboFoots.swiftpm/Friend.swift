import SwiftUI

struct Friend {
    var id: Int
    var name: String
    var cFootprint: Double
    init(id: Int, name: String, cFootprint: Double) {
        self.id=id
        self.name = name
        self.cFootprint = cFootprint
    }
}
