import Foundation

extension String {
    var url: URL? {
        URL(string: self)
    }
}
/*
usage: 
let string1 = "https://medium.com"
let url = string1.url
*/