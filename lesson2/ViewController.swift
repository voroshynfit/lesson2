import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        1.
        ⭕️ Создать две переменные String: одна только числа, вторая числа и буквы.
        
        ⭕️ Создать две переменные Double (одна с дробной частью, вторая - без).
        
        ⭕️ Привести каждую переменную к типу Int и вывести их в консоль.
        
        ⭕️ Найти среднее значение среди полученных Int переменных и вывести их в консоль.
        */
        
        var strOne = "365"
        var strTwo = "4d2v"
        var doubleOne: Double = 29.3
        var doubleTwo: Double = 21
        let intOne = Int(strOne) ?? 0
        var optTwo = strTwo.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        let intTwo = Int(optTwo) ?? 0
        print("Первое задание:")
        print("Привести каждую переменную к типу Int: \(intOne), \(intTwo), \(Int(doubleOne)), \(Int(doubleTwo))")
        let sum = (intOne + intTwo + Int(doubleOne) + Int(doubleTwo)) / 4
        print("среднее значение: \(sum)")
        
       
       /* 2.
        ⭕️ Создать кортеж для автомобиля. Кортеж должен иметь три параметра: марка, год выпуска, объем двигателя.  Вывести в консоль информацию об автомобиле.
        ⭕️ Создать функцию, которая будет принимать кортеж такого вида и выводить в консоль информацию об автомобиле.
        ⭕️ Создать еще три кортежа только через typealias, заполнить их данными и положить их в массив.
        ⭕️ Создать функцию, которая будет принимать кортеж c типом typealias-а  и выводить в консоль информацию об автомобиле.
        ⭕️ В цикле пройтись по массиву и вывести информацию об автомобилях.
        */
       
       
       let car = (brand: "audi", year: 2020, engineСapacity: 3.0)
       print("car info: \(car.brand), \(car.year), \(car.engineСapacity)")
       
       func carInfo(aboutCar: (String, Int, Double)) {
           print(aboutCar)
       }
       
       carInfo(aboutCar: car)
       
       let carOne: Auto = (door: 2, window: 4)
       let carTwo: Auto = (engine: 4, line: 5)
       let carThree: Auto = (bag: 2, airbag: 32)
       
       typealias Auto = (Int, Int)
       
       var cars: [Auto] = [carOne, carTwo, carThree]
       print(cars)
       
       func carsInfo(car: Auto) {
           print("function: car info - door \(car.0), window \(car.1)")
       }

       carsInfo(car: carTwo)
       
       for infoCar in cars {
           carsInfo(car: infoCar)
       }
    }
}
