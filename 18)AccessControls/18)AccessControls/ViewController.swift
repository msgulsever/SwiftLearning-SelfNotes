//
//  ViewController.swift
//  18)AccessControls
//
//  Created by Muhammed Selimhan gülsever on 23.04.2022.
//
//Access Control Nedir?
//Bir evin içerisindeki odalarda birbirlerinden farklı eşyaların olduğunu düşünün. Bu evin sahibi odaların içerisindeki ‘bazı’ eşyaların bulunduğu odanın dışında kullanılmamasını ve ‘bazı’ eşyaların da diğer odalarda kullanılabileceğini söylüyor ve hatta bunun için o ‘bazı’ eşyaları odalarında zincirliyor gibi düşünelim. İşte access control elemanlarını da bu zincirleri kilitlemeye ya da kilidi kaldırmaya yarayan anahtarlara benzetebiliriz. 🔑
//Access control elemanları özellikle birden fazla kişinin çalıştığı projelerde oldukça işe yarar. Örneğin bir sınıfın içerisinde yazmış olduğunuz bir fonksiyonun başka bir sınıf içerisinde kullanılmasını istemiyorsanız, access control elemanlarını kullanarak bunu sağlayabilirsiniz. Böylece tip güvenliği yüksek kodlar yazmış olursunuz.
// Accescontrol yani erişim belirleyicileri swift program dili 5 farklı erişim belirleyicisine sahiptir bunlar kısıtlama sıralmasına göre en az kısıtlayandan en çok kısıtlayana doğru şöyle sıralayabiliriz:
/*
 1)open:aynı modül ve farklı modül içerisindeki bütün sınıflardan erişilebilir ve farklı modüllerden override edilebilir.
 2)public: aynı modül içerisindeki bütün sınıflardan erişilebilir farklı modül içerisindeki methodlara override edemez ve erişemez.
 3)internal: eğer bir sınıfın, metodun vb erişim belirleyicisi belirtilmemiş ise defult internal olarak ayarlanacaktır. farklı bir modülden erişemeyiz sadece bulunduğumuz modülün içindeki işlemleri ypamamıza izin verir. Publiğe çok yakındır fakat sadece bulunduğu class içindeki metodlara erişebilir.
 4)file privite: erişim belirleyicisinde sadece aynı dosya içerisinden erişim sağlanabilir. Aynı dosya derken yeni oluşturduğumuz bir cocoatouchclass,swift class vb dosyalardan erişilebilir. Yani bizim ViewController.swift dosyamızda file privite bir metodumuz olduğunda sadece bu dosya üzerinden erişilebilir. Aynı şekilde farklı bir modül üzerinden de ulaşamayız.
 5)privite: En kısıtlayıcı erişim seviyemiz diyebiliriz. Eğer bir metodu vb privite yapmış isek sadece aynı sınıf vb metodlar içerisinden erişebiliriz
 
 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //open
        //“open” elemanı “framework”lerde kullanılan bir elemandır. Buna örnek olarak UIKit “framework”ünü verebiliriz. Bir “UIViewController” elemanının üzerine tıklayıp “Jump to Definition” derseniz oradaki sınıfların, özelliklerin ve metodların genelinin başında “open” elemanı olduğunu görürsünüz.
        //public
        //“public” elemanı da “open” elemanına çok benzerdir. Aralarındaki en büyük fark, “open” ile tanımladığımız elemanları modülün (örnek: UIKit) dışında -UIViewController elemanını kullandığımız gibi- kullanabilirken, “public” ile tanımladığımız elemanları modül dışında kullanamayışımızdır.
        //public tek modülde tüme erişim sağlarken 2 modül olması durumunda diğer modüle erişim için open kullanılmaktadır. Subclass tanımlanan class başında ve override edilecek methodlarda tanımlamamız gerekmektedir.
       
        //internal
        let ac = accessControl()
        ac.myMassage1()
        
        //fileprivate aynı dosya üzerinde olduğumuz için(ViewController.swift) erişmemize izin verdi.
        ac.myMassage2(massage: "hello its fileprivate func")
        //privite
        //ac.myMassage3 erişilemez
        ac.privateMassage()
        
    }


}


struct accessControl {
    
    internal func myMassage1(){
        print("Hello Swift")
    }
    fileprivate func myMassage2(massage: String) {
        print(massage)
    }
    private func myMassage3(tittle: String, massage: String) {
        print("tittle: \(tittle),massage: \(massage)")
        //bu fonksiyona sadece accessControll adlı struct içinden erişebilir. Yani privite funclar sadece içinde bulunduğu metod içerisinden erişelebilir
    }
    //hiç bir şey yazmasaksak defult internal olarak gelir
    func privateMassage(){
        print(myMassage3(tittle: "privite", massage: "sadece aynı scop üzerinde çalışır"))
    }
    
}

