//
//  ViewController.swift
//  Enumerations
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//---------------Enumerations-------------
//enumeration kısaca birbirleriyle mantıksal olarak alakalı değerleri bir arada gruplamamıza sağlayan yapılardır. Birbirleriyle alakalı bu değerleri hem isimleriyle hemde bir index numarası ile erişebilmemiz mümkündür.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let bugun = Gunler.sali
        print(bugun)
        
        //switch case ile kullanma
        switch bugun {
        case Gunler.pazartesi:
            print("Haftanın ilk iş günü")
        case Gunler.sali:
            print("Haftanın ikinci iş günü")
        case Gunler.cumartesi:
            print("Hafta sonu")
        case Gunler.pazar:
            print("Yarın iş var")
        default:
            print("belli bir gün değil")
        }
        
        //raw value property okuma işlemi
        
        let dunyaninSirasi = Gezegenler.dunya.rawValue
        print("dünyanın sırası: \(dunyaninSirasi)")
    }
    
    
}
//örnek-1: Haftanın günlerini tanımlayalım.

enum Gunler {
    case pazartesi
    case sali
    case carsamba
    case persembe
    case cuma
    case cumartesi
    case pazar
}

//kısa tanımlama
enum Gunlerkisa {
    case pazartesi, sali, carsamba, persembe, cuma, cumartesi, pazar
    
}

//enu satır değerleri
enum Gezegenler: Int {
    case merkur = 1, venus, dunya, mars, jupiter, saturn, uranus, neptun
    
}
