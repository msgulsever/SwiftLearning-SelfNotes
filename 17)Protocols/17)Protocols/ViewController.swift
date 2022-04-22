//
//  ViewController.swift
//  17)Protocols
//
//  Created by Muhammed Selimhan gülsever on 22.04.2022.
//
// Swift protocol oriented bir dildir. Protocol: Tüm yazılım dillerinde inheritance(miras alma) kavramı vardır. Nesne Yönelimli Programlama dillerinin en önemli kavramlarından birisi Inheritance kavramıdır. Protocole ihtiyaç duymamızın sebebi swift, Multiple Inheritance destekleyen bir dil değildir. Single Inheritance destekleyen bir dildir. Yani iki farlı classtan miras alamazsınız. Tam burada Protocol Oriented devereye giriyor. Class yerine protokol tanımlayarak bu işi yerine getirebiliyoruz. Protocol tanımlarken fiilerin sonuna -able (bişey yapabilir, bişey yapabilme yetisine sahip) eki getirilir. Yani bir class ve sonrasında protokoller ile bir class türetebiliriz. Ancak bu durum Swift dilinde çok kullanılmaz. Apple da kullanmamızı istemiyor. Inheritance kullanacaksak Class değil Struct kullanmalıyız. Struct yapılarında Inheritance yapısı yok. Struct yapısında direk protocol kullanabiliyoruz. Aşağıdaki örneklerle bunları pekiştirelim.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let obj = user(iname: "selimhan", iage: 25)
        
        get(p: obj)
        
        func get (p: vip) {
            p.ageGetter()
            p.nameGetter()
            
        }
    }
    
   
}

//örnek serisi 1
class Hayvan {
    var isim: String!
    var yas: Int!
}
class Yürü {
    var kmPerHour: Int!
    var adımBoyutu: Int!
}
class Nefes {
    var oksijenPerHour: Int!
    var akcigerboyutu: Int!
}

/* insan classını oluştururken hata alıyoruz aşağıdaki hata incelendiğinde multiple inheritance hatasını görebiliriz yani birden fazla miras alınamıyor.
class Insan: Yürü,Nefes {
    var Irk: String!
}
*/
protocol Yürüyebilir {
    var kmPerHour: Double { get set }
    
}
protocol NefesAlabilir {
    
}

//class Insan: Hayvan,Yürüyebilir,NefesAlabilir {
//}
// yukarıdaki gibi kullanımı mecvuttur. Eğer Insan: Yürüyebilir, NefesAlabilir yanında Super Class yoksa bu yapının Super Class’ı NSObject olacaktır. Biz kodumuzda Hayvan sınıfını eklediğimiz için bizim Super Class’ımız Hayvab oldu ve Animal sınıfından türeyen sınıfa Yürüyebilir ve NefesAlabilir özelliklerini ekledik. Yukarıda Bahsettiğimiz gibi Apple bunu istemiyor  Inheritance kullanacaksak Class değil Struct kullanmalıyız. Struct yapılarında Inheritance yapısı yok. Struct yapısında direk protocol kullanabiliyoruz. Ne demek istiyorum anlamaya çalışalım…
//Struct yapıları inheritance olmamasını bu şekilde görebiliriz:
//struct Insan: Hayvan, Yürüyebilir, NefesAlabilir {}
//milesPerHour adında bir değişken oluşturduk ve bu değişkenin Double türünde olacağını söyledik.
//Nedir bu get, set ?
//Eğer var kmPerHour: Double { get } şeklinde kodumuzu yazsaydık. Bu değişkenin değeri değiştirilemez sadece okunabilirdi.
//Kodumuzu yazdıysak Xcode bize hata verecektir. Aslında bu bir hata değil. Bunu uyarıcı olarak düşünebilirsiniz.Çıkan uyarıya tıklayıp Fix butonuna tıkladığınızda protokolün içindeki değişken otomatik olarak struct yapınızın içine eklenecektir.

struct Insan: Yürüyebilir,NefesAlabilir {
    var kmPerHour: Double
    
}

//örnek serisi 2

protocol vip {
    var name: String? {get}
    var age: Int? {get}
    
    func nameGetter()
    func ageGetter()
}

class user:vip {
    var name: String?
    
    var age: Int?
    
    init () {
        
    }
    init(iname: String?, iage: Int?) {
        name = iname
        age = iage
    }
    
    func nameGetter() {
        print(name!)
    }
    
    func ageGetter() {
        print(age!)
    }
    
    
}

