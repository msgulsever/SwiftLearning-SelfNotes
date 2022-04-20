//
//  ViewController.swift
//  Arrayvekullanımları
//
//  Created by Muhammed Selimhan gülsever on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        //boş array oluşturma
        
        var arabalar = [String]()
        var yillar = [Int]()
        
        // boş durumunu kontrol etme
        
        if arabalar.isEmpty {
            print("array boş")
        }
        if yillar.isEmpty {
            print("array boş")
        }
        
        // array'e eleman ekleme
        
        arabalar.append("Mercedes")
        arabalar.append("BMW")
        arabalar.append("Ford")
        arabalar.append("Renault")
        
        yillar.append(2021)
        yillar.append(1990)
        yillar.append(1900)
        yillar.append(2022)
        
        print(arabalar)
        print(yillar)
        
        // array içindeki eleman sayısını bulma
        
        //iki şekilde gösterebiliriz
        //1
        print(arabalar.count)
        print(yillar.count)
        //2
        var elemansayisi = arabalar.count
        var yilsayisi = yillar.count
        print(elemansayisi)
        print(yilsayisi)
        
        //array ilk ve son elemanı alma
        print(arabalar.first!)
        var ilkeleman = yillar.first
        print(ilkeleman!)
        
        // array içindeki belli index'i alma/yazdırma
        // indexler 0 dan başlar. İlk eleman her zaman sıfırıncı indextir.
        
        print(arabalar[0])
        print(arabalar[2])
        
        print(yillar[1])
        print(yillar[3])
        
        // array içinden eleman silme
        
        arabalar.remove(at: 3) //3. indexdeki elemanı siler.
        print(arabalar)
        yillar.remove(at: 1) //1. indexdeki elemanı siler.
        
        //sıralama
        // stringlerde a'dan z'ye integerda küçükten büyüğe sıralar
        print(arabalar.sorted())
        print(arabalar.sorted(by: >))

        var sirala = yillar.sorted()
        print(sirala)
        
        //filtreleme
        //1) intlerde filtreleme
        
        let filtreleme = yillar.filter{$0 > 2000} //2000'e kadar olan sayilari filtreler
        print(filtreleme)
        
        //2) string filtreleme (Contains)
        //contains true yada false döner
        
        var örnekarray = ["elma","armut","ayva","karpuz"]
        print(örnekarray)
        if örnekarray.contains("elma") == false {
            print("elma mevcut değil")
            örnekarray.append("elma")
        }
        if örnekarray.contains("kiraz") == false {
            print("kiraz mevcut değil")
            örnekarray.append("kiraz")
        }
        if örnekarray.contains("muz") == false {
            print("muz mevcut değil")
            örnekarray.append("muz")
        }
        print(örnekarray)
        
        
        
        
        
        
    }
}

