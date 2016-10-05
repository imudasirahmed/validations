import UIKit

extension String {
    
    func match(patternString: String) -> Bool {
        if let range = self.range(of: patternString, options: .regularExpression, range: nil, locale: nil) {
            return range.lowerBound == startIndex && range.upperBound == endIndex
        } else {
            return false
        }
    }
}

let emailRegex = "^[\\w!#$%&'*+\\-\\/=?\\^_`{|}~]+(\\.[\\w!#$%&'*+\\-\\/=?\\^_`{|}~]+)*@((([\\-\\w]+\\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\\.){3}[0-9]{1,3}))$"

let phoneRegex = "^(\\+\\d{1,2}\\s)?\\(?\\d{3}\\)?[\\s.-]?\\d{3}[\\s.-]?\\d{4,5}$"

"3121211212".match(patternString: phoneRegex)
"me@aaa.com".match(patternString: emailRegex)
