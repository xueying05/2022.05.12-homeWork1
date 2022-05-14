
class User {
    var countryCode: CountryCode
    var phoneNumber: Int = 0
    
    init  (countryCode: CountryCode, phoneNumber: Int){
    self.countryCode = countryCode
    self.phoneNumber = phoneNumber
    }
}
