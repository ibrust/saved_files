import Foundation

extension String {
    var no_whitespace: String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func no_whitespace() {
        self = self.no_whitespace
    }
}
/*
var str1 = "  a b c d e   \n"
var str2 = str1.no_whitespace
str1.no_whitespace()
*/