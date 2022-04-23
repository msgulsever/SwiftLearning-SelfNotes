// Öncelikle Tip nedir sorusuna cevaben swift programlama dili farklı türdeki verileri tutubilmek için tipleri kullanır. Programlama dilinde oluşturacağımız her yeni değişken ve sabit için bir tip belirltmek zorundayız. Belirtmediğimiz durumlarda ise literal değerlere göre derleyici bu değişkeni veya sabitlere bizim yerimize tiplerini vermektedir.
//type casting ise Type Casting türkçe anlamıyla tip değiştirme. Bir tipi başka bir tip gibi davranmaya zorlamak veya bir tipi kontrol etmek için kullanılır.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //örnek iki string değişkenin birini Int diğerini ise Float tipine dönüştürdük.
        let strNumber = "53" // string
        let strFloat = "3.180" // string
        
        let invValue = Int(strNumber)!
        let floatValue = Float(strFloat)!
        print(invValue)
        print(floatValue)
        
        // as, as!, as? yani downcasting işlemi yapan operatörlerde bulunur.
        
        // as?
        // ? bu değer nil gelebilir demektir
        
        let image = UIImage()
        
        let x = image as? UIButton // butona dönüştüremediği için nil  değer döndürür
        let y = image as? UIImage
        
        print(x)
        print(y)
        
        //as!
        // ! unwapping işlemi ile cast edecek. kesin gelecek anlamında kullanılabilir ama tehlikelidir!
        let button = UIButton()
        // let b = button as! UIImage hata verecektir.
        let b = button as! UIButton
        print(b)
        
        //as
        //normal bir atama işlemi yapar.
        let value = "20"
        if let data = value as String? {
            print(data)
        }
    }
 

}

