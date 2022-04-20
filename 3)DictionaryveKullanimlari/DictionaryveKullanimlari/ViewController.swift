//
//  ViewController.swift
//  DictionaryveKullanimlari
//
//  Created by Muhammed Selimhan gülsever on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //dictionary key:value yani anahtar ve değer tutan sözlüklerdir.
        
        //boş sözlük tanımlama
        var dictionary = [String:Int]()
        // sözlükler int:string, int:int, string:string, string:any vb. gibi tanınlanabilir.

        
        //örnek olarak bir sınıfta öğrencilerin ve notlarının tutulduğu dictionary tanımlayalım
        var sinif = [String:Int]()
        //ekleme yapma
        sinif["selimhan"] = 50
        sinif["ahmet"] = 90
        sinif["mehmet"] = 60
        print(sinif)
        
        //boş kontrolü
        if sinif.isEmpty {
            print("sözlük boş")
        }else {
            print("sözlük dolu")
        }
        //değer tipi belirlemeden de sözlük oluşturulabilir.
        var ulkevesehirler = ["Türkiye":"Ankara","Fransa":"Paris","İngiltere":"Londra"]
        print(ulkevesehirler)
        
        //sadece key ya da value yazdırma
        let keys = ulkevesehirler.keys
        let values = ulkevesehirler.values
        print(keys)
        print(values)
        //or
        print(ulkevesehirler.keys)
        print(ulkevesehirler.values)
        
        //for döngüsü ile ülke ve şehir yazdırma
        
        for (key,value) in ulkevesehirler {
            print("ülke:\(key) şehir:\(value)")
        }
        
        //eleman sayısı
        print(ulkevesehirler.count)
        
        //silme işlemi
        //ulkevesehirler.removeAll() //bütün verileri siler. (Set ve Dictionaryler de bu method geçerli!)
        
        //ulkevesehirler.removeValue(forKey: "Türkiye") // belli key ve value siler.
        //ulkevesehirler["Fransa"] = nil
        print(ulkevesehirler)
        
        //Key güncelleme
         ulkevesehirler["Türkiye"] = "İstanbul"
        print(ulkevesehirler)
        ulkevesehirler["Türkiye"] = "Ankara"
        
        if let baskent = ulkevesehirler["Türkiye"] {
            print("Türkiyenin başkenti \(baskent)'dır")
        }else {
            print("key bulunamadı")
        }
        
        
        
    }


}

