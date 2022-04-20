//
//  ViewController.swift
//  14)Subscripts
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//
//Swift Subscript yapısı classlar, structlar ve enumlar içerisine tanımlanabilir. Bu yapılar içerisinde yer alan diziler, kümeler, collectionlar vb. yapıların değerlerini okumayı(get) ve değiştirebilmeyi(set) mümkün kılar. Herhangi bir metod tanımlamaya ihtiyaç duymadan değerleri getirebildiğimiz ve değiştirebildiğimiz için bazı durumlarda işimizi kolaylaştıracaktır. Bir tip içine birden fazla subscript tanımlanabilir ve subscript içine birden fazla parametre alabilir.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // örnek 1
        let result = Hesapla(carpan: 3)
        print("6 kere 3 eşittir = \(result[6])") // [6] çalıştığında subscript çalışacaktır.
        
        //örnek 2
        //0,1,2 şeklinde gittiğini unutmayalım!!
        var event = Event()
        print("3. index değeri: \(event[2])") // get metodu çalışacak
        
        event[2] = "yüzme" // burada set işlemi çalışacak
        
        print("3. index değeri: \(event[2])")
        
        
        
    }


}

struct Hesapla {
    let carpan: Int
    
    subscript (satirsayisi:Int) -> Int {
        return carpan * satirsayisi
    }
}

struct Event {
    var events = ["Footbal","Sinema","Tiyatro","Konser"]
    
    subscript(eventIndex: Int) -> String {
        get {
            return events[eventIndex] // almak
        }
        set(newValue) {
            events[eventIndex] = newValue // değiştirmek
        }
            
        
    }
}
