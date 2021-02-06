import Foundation

extension String {			// this only works with alphanumerics, apparently... which is a problem, really. 
    var alphanumeric_word_count: Int {
        let regex = try? NSRegularExpression(pattern: "\\w+")
        return regex?.numberOfMatches(in: self, range: NSRange(location: 0, length: self.utf16.count)) ?? 0
    }
}