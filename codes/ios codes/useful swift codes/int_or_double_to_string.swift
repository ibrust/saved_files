import Foundation

extension Int {
    func toString() -> String {
        "\(self)"
    }
}
extension Double {
    func toString() -> String {
        String(format: "%.02f", self)
    }
}

/*
let d1 = 15.67
let d1AsString = d1.toString()
*/