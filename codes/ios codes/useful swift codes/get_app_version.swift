import Foundation

extension Bundle {
    var appVersion: String? {
        self.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    static var mainAppVersion: String? {
        Bundle.main.appVersion
    }
}

/*
usage: 
let appVersion = Bundle.mainAppVersion
*/