//
//  ViewController.swift
//  Closures
//
//  Created by Muhammed Selimhan gülsever on 12.04.2022.
//

import UIKit

//Closurelar fonksiyonlara benzer özelliklere sahiptir. Fonksiyonlardan daha da kısaltılmış yapıya sahiptir. Değişkenlerde değer olarak tutulabilirler aynı zamanda fonksiyonlara parametre olarakta verilebilirler.

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ResultFunc = topla(10, 20)
        print("toplamı \(ResultFunc)")
        
        //closure
        
        var ResultClosure: (Int,Int) -> (Int) = {sayi1,sayi2 in
            return sayi1 + sayi2
        }
        let toplam = ResultClosure(10,10)
        print("toplam \(toplam)")
        //Kısa  kullanımı
        var KisaToplama: (Int, Int) -> (Int) = {
            return $0 + $1
        }
        let Kisatoplam = KisaToplama(10,200)
        print("toplamı: \(Kisatoplam)")
    }
    
    //Toplama işlemi
    
    //fonksiyon olarak kullanımı
    
    func topla(_ sayi1: Int,_ sayi2: Int) -> Int {
        return sayi1 + sayi2
        
    }


}

