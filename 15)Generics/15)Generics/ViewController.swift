//
//  ViewController.swift
//  15)Generics
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//
//
//Generic yapılar, değerin veya değerlerin türünden bağımsız olarak işlem yapmamızı sağlayan yapılardır. Bu yapılar sayesinde benzer işlemleri tek bir işlem haline getirmek mümkündür. Şunu unutmamak gerekiyor ki Generic yapılar ile bütün işlemleri yapmak mümkün değildir, çünkü Generic yapılar sadece “genel” işlemleri yapabilirler.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var username = "selimhan"
        var password = "123456"
        print(username,password)
        swap(item1: &username, item2: &password)
        print(username,password)
        
        var num1 = 12345
        var num2 = 19181716
        print(num1,num2)
        swap(item1: &num1, item2: &num2)
        print(num1,num2)
        
    }
    // örnek yer değiştirme metodu String, hemde Int için
   /*
    func swap(item1: inout String, item2: inout String){
        //inout içeride değiştirilen değerin dışarıya aktarılmasını sağlıyor.
        let temp = item1
        item1 = item2
        item2 = temp
    }
    func swap(item1: inout Int, item2: inout Int){
        //inout içeride değiştirilen değerin dışarıya aktarılmasını sağlıyor.
        let temp = item1
        item1 = item2
        item2 = temp
    }
    func swap(item1: inout Double, item2: inout Double){
        //inout içeride değiştirilen değerin dışarıya aktarılmasını sağlıyor.
        let temp = item1
        item1 = item2
        item2 = temp
    }
yerine aşağıdaki tanımlama yapılabilir*/
    func swap<T>(item1: inout T, item2: inout T){
        //inout içeride değiştirilen değerin dışarıya aktarılmasını sağlıyor.
        let temp = item1
        item1 = item2
        item2 = temp
    }
    

}



