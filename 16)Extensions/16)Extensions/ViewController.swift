//
//  ViewController.swift
//  16)Extensions
//
//  Created by Muhammed Selimhan gülsever on 22.04.2022.
//
//
//Extension yapısı Swift'te kodumuzda varolan sınıflara, protokollere veya yapılara yeni işlevler eklememizi sağlar. Extension kelime anlamı olarak “uzantı”, “genişletme”, “ekleme” veya “ilave” olarak dilimize çevrilebilir. Aslında yaptığı görevde bu kelimelerle açıklanabiliyor.
// Extensions türkçe anlamıyla genişletmeler sınıflara, nesnelere yeni özellikler kazandırmaya yarar.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //extension olmadan fonksiyon ve çağırma işlemi
        let result = kare(item: 10)
        print(result)
        
        //extension kullanımı
        let res = 10.kareExtension()
        print(res)
        //örnek 2 ExtensionDeneme dosyasında oluşturduğumuz extension'ı kullanma işlemi
        let oldstr = "  Selimhan Gülsever "
        let str = "         Selimhan Gülsever ".trim()
        print(oldstr)
        print(str)
        
    }
    
    func kare(item: Int) -> Int {
        return item * item
    }


}

//örnek1 int değerinin karesini alan bir extension yazalım

extension Int { // mevcut int classına olmayan bir özellik ile genişletme yapacağız
    func kareExtension() -> Int {
        return self * self
    }
}
