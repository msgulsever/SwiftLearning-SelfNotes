//
//  ViewController.swift
//  Inheritance
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
// Kalıtım yada miras alma dediğimiz inheritance, bir sınıfın bir üst sınıftan metotları, propertyleri veya diğer sınıf karakteristiklerini miras almasıdır. Miras alınan sınıfa superclass, miras alan sınıfa ise subclass denir.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kopek = Kopek()
        kopek.sesCikar()
        let kedi = Kedi()
        kedi.sesCikar()
        
        let kurt = Kurt()
        kurt.sesCikar()
    }
    
    


}
// base class herhangi bir sınıftan miras almayan sınıflara denir

//base class
class Hayvan {
    func sesCikar(){
        
    }
}

//
class Kopek:Hayvan {
    //override işlemi fonksiyonu değiştirmemize olanak sağlıyor
    override func sesCikar() {
        print("Hav hav")
    }
}

class Kedi:Hayvan {
    override func sesCikar() {
        print("Miyav miyav")
    }
}

//miras alan sınıftan miras alma

class Kurt:Kopek {
    override func sesCikar() {
        print("uuuuuuuuu")
    }
}
