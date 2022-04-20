//
//  ViewController.swift
//  Functions
//
//  Created by Muhammed Selimhan gülsever on 12.04.2022.
//

import UIKit

//Fonksiyon belli bir görevi yerine getirmek için özelliştirilmiş kod bloklarına verilen isimdir.
// aynı kod tekrarına düşmememiz için kullanılır
// func keywordü ile belirtilir
//http://www.globalnerdy.com/wp-content/uploads/2014/06/function-headers-in-swift.jpg
//func tanımlandıktan sonra fonksiyon adı belirlenir örn: func deneme()
//fonksiyon tanımlanırken parametre alıyorsa parantez içerisinde belirtilir. örn func deneme(integer: Int)
//fonksiyon geri bir değer döndürecekse "->" yazılır ve geri döndüreceği tip belirtlir. örn func deneme() -> Int
//fonksiyon tiplerini aşağıda örneklerle bulabilirsiniz

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //fonksiyon çağırma işlemi
        YasOrtalamasıHesapla()
        //parametre alan fonksiyon çağırma
        YasOrtalmasıHesapla(yas1: 30, yas2: 40)
        //Geriye Değer döndüren fonksiyon çağırma
        let sonuc = YasOrtalamasıHesapla(number1: 30, number2: 40)
        print("2 Yaşın ortalaması: \(sonuc)")
        //External parametre alan fonksiyon çağırma
        hesapla(hesaplamaIslemi: "topla", BirinciSayi: 15, IkinciSayi: 20)
        hesapla(hesaplamaIslemi: "çarpma", BirinciSayi: 15, IkinciSayi: 20)
        hesapla(hesaplamaIslemi: "ortalama", BirinciSayi: 15, IkinciSayi: 20)
        //parametre adı olmayan external fonksiyon
        hesapla("topla", 25, 45)
        //Geriye birden fazla değer döndüren fonksiyon
        let sonucc = hesapla(10, 10)
        print("toplamı: \(sonucc.toplami), çarpımı: \(sonucc.carpimi), ortalaması \(sonucc.ortalamasi)")
        
        
    }
    //fonksiyonları aldığı parametreler ve geri döndürdüğü parametreler ile aynı isimle Overload ettik.
    // 1)Parametre almayan fonksiyon
    
    func YasOrtalamasıHesapla() {
        let yas1 = 20
        let yas2 = 30
        
        let ort = (yas1 + yas2) / 2
        print("2 Yaşın ortalaması:  \(ort)")
    }
    
    // 2)Parametre alan fonksiyon
    
    func YasOrtalmasıHesapla(yas1: Int, yas2: Int) {
        
        let ort = (yas1 + yas2) / 2
        print("2 Yaşın ortalması: \(ort)")
        
    }
    
    // 3)Geriye değer döndüren fonksiyon
    
    func YasOrtalamasıHesapla(number1: Int, number2: Int) -> Int {
        
        let ort = (number1 + number2) / 2
        return ort
        
    }
    
    // 4)external parametre alan fonsksiyon
    
    func hesapla(hesaplamaIslemi islem:String, BirinciSayi sayi1: Int, IkinciSayi sayi2: Int ) {
        
        switch islem {
        case "topla":
            print("toplamı: \(sayi1 + sayi2)")
        case "çarpma":
            print("çarpımı: \(sayi1 * sayi2)")
        case "ortalama":
            print("ortalaması: \((sayi1 + sayi2) / 2)")
        default:
            print("hatalı işlem")
            
        }
        
    }
    
    // 5)parametre adı olmayan external fonksiyon
    func hesapla(_ islem:String,_ sayi1: Int,_ sayi2: Int ) {
        
        switch islem {
        case "topla":
            print("toplamı: \(sayi1 + sayi2)")
        case "çarpma":
            print("çarpımı: \(sayi1 * sayi2)")
        case "ortalama":
            print("ortalaması: \((sayi1 + sayi2) / 2)")
        default:
            print("hatalı işlem")
            
        }
        
    }
    
    // 6)Geriye birden çok parametre döndüren fonksiyon
    func hesapla(_ sayi1: Int,_ sayi2: Int) -> (toplami: Int, carpimi: Int, ortalamasi: Int) {
        let toplami = sayi1 + sayi2
        let carpimi = sayi1 * sayi2
        let ortalamasi = (sayi1 + sayi2) / 2
        return (toplami, carpimi, ortalamasi)
    }
 
}


