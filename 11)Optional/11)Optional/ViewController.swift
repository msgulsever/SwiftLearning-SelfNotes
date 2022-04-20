//
//  ViewController.swift
//  11)Optional
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//
//
// Optional: Swift dilinde bir değişkenin değerinin olmaması nil değeri alabilmesi için o değişkenin optional olarak tanımlanmış olması gerekir. Bir değişken nil değeri alabiliyor ise o değişken optional bir değişkendir yani değer almasada olur. Yani değişkenin bir değeri olabilir olmayadabilir demektir.



import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var benimAdim = "Selimhan"
        var benimİkinciAdim: String? = "Muhammed" // ? kullanarak bu değerin boş olabileceğini söyledik.
        var benimSoyadim = "Gülsever"
        
        //değerleri sil
        
        //benimAdim = nil
        //benimİkinciAdim = nil
        //benimSoyadim = nil
        
        
        
        print("adım: \(benimAdim),ikinci adım: \(benimİkinciAdim),soyadım: \(benimSoyadim)")
        //çıktıdaki optinaldan kurtulmak için bir kaç adım izleyebilir. Bunlardan bir tanesi eğer verinin kesin geleceğini biliyorsak "!" kullanabiliriz.          ikinci adım: \(benimİkinciAdim!) şeklinde
        
        //ikinci bir yol olarak; burada üstteki nil seçeneğini açarsak if içerisine girmeyecek ve yazdırmayacak.
        if let ikinciadim = benimİkinciAdim {
            print("adım: \(benimAdim),ikinci adım: \(benimİkinciAdim),soyadım: \(benimSoyadim)")
        }
    }


}

