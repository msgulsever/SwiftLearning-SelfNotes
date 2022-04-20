//
//  ViewController.swift
//  10)Init-Deinit
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
// Initialization bir sınıf, structure yada enum’dan kullanmak için bir instance oluşturma sürecine verilen isimdir. Bu süreçte propertylere ilk değer ataması yapılır ve initializer’lar kullanılır.
//Deinitialization: Bir sınıf nesnesi Otomatik Referans Sayacı (ORS) mekanizması tarafından heap ’ten yok edilmeden hemen önce o nesne için o sınıfın deinit metodu çağrılır. deinit metodunun parametresi ve geri dönüş değeri yoktur. Bir başka deyişle, objemiz deallocate edilmeden önce işlemler yapmak  için deinit metodunu kullanabiliriz. Deinit metodu objemiz deallocate edilmeden önce çalışır.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let derece = Derece()
        print("default sıcaklık derecesi: \(derece.sicaklik)")
        
        //deinit kullanımı
        
        var new:OrnekSinif? = OrnekSinif()
        print("init çalıştı mı?")
        
        new = nil
        print("deinit çalıştı mı?")
        
        var new2:OrnekSinif? = OrnekSinif(_sayi: 10)
        
        print("parametreli versiyonu çalıştı mı?")
        
        new2 = nil
        print("parametreli deinit çalıştı mı?")
    }


}

struct Derece {
    var sicaklik: Double
    init() {
        sicaklik = 22.0
    }
}


class OrnekSinif {
    var sayi: Int
    init() {
        sayi = 0
        print("default init calisti")
    }
    init(_sayi: Int) {
        self.sayi = _sayi
        print("parametre alan init calisti")
    }
    deinit {
        print("deninit calisti")
    }
}
