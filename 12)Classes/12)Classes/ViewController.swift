//
//  ViewController.swift
//  12)Classes
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//
//Class Nedir?
//Sınıflar, program kodunuzun yapı taşları haline gelen genel amaçlı, esnek yapılardır. Sabitleri, değişkenleri ve metotları tanımlamak için kullandığınız söz dizimini kullanarak yapılarınıza ve sınıflarınıza işlevsellik eklemek için özellikler ve metotlar tanımlarsınız. Diğer programlama dillerinin aksine Swift, özel yapılar ve sınıflar için ayrı arayüz ve uygulama dosyaları oluşturmanızı gerektirmez. Swift dilinde, tek bir dosyada bir yapı veya sınıf tanımlarsınız ve o sınıfa veya yapıya harici arabirim otomatik olarak diğer kodların kullanımına sunulur.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //nesne oluşturma
        let otomobil = Tasit()
        otomobil.hiz = 100
        otomobil.renk = "kırmızı"
        otomobil.otomatik = true
        otomobil.yakit = .dizel
        
        let otomobil2 = Tasit()
        otomobil2.hiz = 200
        otomobil2.renk = "Siyah"
        otomobil2.otomatik = false
        otomobil2.yakit = .elektrik
        
        otomobil.Bilgiler()
        print("------------------------")
        otomobil2.Bilgiler()
        
        
        //örnek 2
        let podcast = Podcast() // bölüm daha başlamadı.
        print(podcast.episode.audio)
        
        //örnek 3
        
        let Tarkan = Sanatci(_adi: "Tarkan", _yasi: 40)
        print("adı: \(Tarkan.adi),yaşı: \(Tarkan.yasi)")
        Tarkan.SarkiSöyle()
        
        //örnek 4
        
        let kare = Dikdortgen(_kisakenar: 5, _uzunkenar: 5)
        print("karenin alanı: \(kare.AlanHesapla())")
        print("karenin çevresi: \(kare.CevreHesapla())")
        
        
    }


}
//class oluşturma
class Tasit {
    var hiz: Int = 0
    var renk: String = ""
    var otomatik: Bool = false
    var yakit: YakitTipi  = .bilinmiyor
    
    func Bilgiler(){
        print("hızı: \(hiz),renk: \(renk),vites tipi: \(otomatik ? "otomatik" : "manuel"), yakıt tipi: \(yakit)")
    }
    
}
enum YakitTipi {
    case benzin, dizel, lpg, elektrik, bilinmiyor
}
//örnek 2 Class içinde class tanımlama

class Podcast {
    lazy var episode = Episode() // "var" zorunlu değişken olarak tanımlanır
}

class Episode {
    var audio = "müzik.mp3"
    
}

//örnek 3

class Sanatci {
    var adi: String
    var yasi: Int
    
    init(_adi:String, _yasi:Int) {
        self.adi = _adi
        self.yasi = _yasi
        
    }
    
    func SarkiSöyle(){
        print("la la la")
    }
}

//örnek 4

class Dikdortgen {
    var kisakenar: Int = 0
    var uzunkenar: Int = 0
    
    init(_kisakenar:Int,_uzunkenar:Int) {
        print("init calisti")
        self.kisakenar = _kisakenar
        self.uzunkenar = _uzunkenar
        
    }
    
    func AlanHesapla() -> Int {
        return kisakenar * uzunkenar
    }
    func CevreHesapla() -> Int {
        return (kisakenar + uzunkenar) * 2
    }
    
    
}
