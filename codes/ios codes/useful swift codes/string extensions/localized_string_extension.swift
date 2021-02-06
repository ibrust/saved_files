import Foundation 

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    func localized(comment: String) -> NSLocalizedString {
	return NSLocalizedString(self, comment: comment)
    }
}