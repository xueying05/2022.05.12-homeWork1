
//Создать класс User c 2 параметрами сountryCode типа Enum и phoneNumber. В main cоздать пустой массив из User. Cделать так, чтобы программа запрашивала ввод данных страны и номера. После ввода добавлять данные в объект User, объект в массив. Действие должно повторяться несколько раз. В конце сделать поисковик по стране и выводить все номера только с определенной страны.
var users: [Int : String] = [0 : ""]
var code = 0

for i in 1...3{
print("Выберите страну:")
var countryName = readLine()

switch countryName {
case "Kyrgyzstan":
    code = CountryCode.Kyrgyzstan.rawValue
case "Russia":
    code = CountryCode.Russia.rawValue
case "Turkey":
    code = CountryCode.Turkey.rawValue
default:
    print("Ошибка")
}
    
    print("Веддите номер телефона:")
    var number = readLine()
    print("+ \(code) \(number!)")

    users[code] = "+\(code)-\(number!)"
    
}

print("Поиск страны:")
var searchCountry = readLine()!
var code2 = 0
switch searchCountry {
case "Kyrgyzstan":
    code2 = CountryCode.Kyrgyzstan.rawValue
case "Russia":
    code2 = CountryCode.Russia.rawValue
case "Turkey":
    code2 = CountryCode.Turkey.rawValue
default:
    print("Ошибка")
}

var resultArray: [String] = [""]
resultArray = []
for item in users{
    if item.key == code2{
        resultArray.append(item.value)
    }
}

if resultArray != [""]{
    for item in resultArray{
        print(item)
    }
}else{
    print("no matches")
}









