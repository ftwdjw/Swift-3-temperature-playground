//: Playground - noun: a place where people can play
// tested in xcode 8


import Cocoa

var str = "Hello, playground"


//The first initializer has a single initialization parameter with an external name of fromFahrenheit and a local name of fahrenheit. The second initializer has a single initialization parameter with an external name of fromKelvin and a local name of kelvin. Both initializers convert their single argument into the corresponding Celsius value and store this value in a property called temperatureInCelsius.

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
// freezingPointOfWater.temperatureInCelsius is 0.0

boilingPointOfWater.temperatureInCelsius

freezingPointOfWater.temperatureInCelsius
