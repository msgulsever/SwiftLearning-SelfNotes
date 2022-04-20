//
//  ViewController.swift
//  13)Structs
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//
//Struct yapı olarak sınıf ile benzer özellikler gösterir. Aynı şekilde tanımlanır, içerisine özellikler ve metodlar alabilir.Structlar init() metoduna ihtiyaç duymazlar. Yazdığımız özelliklere göre otomatik olarak init() metodu oluşturulur. Classlar reference typetır ve structlar value type yani class yapısında bir değişiklik olunca diğer classlara yansırken structta her örnek farklı ve bağımsızdır.
//daha iyi anlaşılması için görsele bakınız: https://miro.medium.com/max/940/1*oiSNPErZHJ40FcWNTxAM0A.gif

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //init örneği
        var kareClass = Dikdortgen1(_kisakenar: 10, _uzunkenar: 10)
        print(kareClass.AlanHesapla())
        print(kareClass.CevreHesapla())
        //tanımlarken otomatik olarak init oluşturuldu. ( koyduktan sonra görülebilir
        var kareStruct = Dikdortgen2(kisakenar: 10, uzunkenar: 10)
        print(kareStruct.AlanHesapla())
        print(kareStruct.CevreHesapla())
        
        print("------------Value type örnek-------------")
        //refence-value type örneği
        //value type Struct örneği
        var point1 = PointStruct(x: 10, y: 10)
        var point2 = point1
        print(point1.x)
        print(point2.x)
        point1.x = 10000
        print(point1.x)
        print(point2.x)
        
        //reference type/ class örneği
        print("----------------reference type")
        var point3 = PointClass(_x: 10, _y: 10)
        var point4 = point3
        print(point3.x)
        print(point4.x)
        point3.x = 10000
        print(point3.x)
        print(point4.x)
        
    }


}
class Dikdortgen1 {
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

struct Dikdortgen2 {
    var kisakenar: Int = 0
    var uzunkenar: Int = 0
    
    func AlanHesapla() -> Int {
        return kisakenar * uzunkenar
    }
    func CevreHesapla() -> Int {
        return (kisakenar + uzunkenar) * 2
    }
    
    
}

struct PointStruct {
    var x = 0
    var y = 0
}
class PointClass {
    var x = 0
    var y = 0
    
    init(_x:Int,_y:Int) {
        self.x = _x
        self.y = _y
    }
}
