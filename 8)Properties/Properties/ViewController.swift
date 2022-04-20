//
//  ViewController.swift
//  Properties
//
//  Created by Muhammed Selimhan gülsever on 20.04.2022.
//-----------------Properties---------
//stored properties: class yada structure instance da bulunan değişkenler veya sabitlerdir. Stored properties classlar veya structurelar tarafından desteklenir.
//Swift dilinde Stored Properties ve Computed Properties olmak üzere iki adet property vardır. Stored properties nesneye ait sabitlerin ve değişkenlerin değerlerini saklarken, computed properties ise bu değerleri saklamakta ziyade hesaplama göreviyle ilgilenir.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var userInfo = UserInfo1(name: "selimhan", age: 25) // değiştirmemizi sağlayan birinci neden "var" kullanmamız
        
        print(userInfo)
        
        //yeni bir değer atama
        
        //userInfo.name = "hasan" yapılamaz
        userInfo.age = 26
        print(userInfo.age)
        
        //
        //let user = user()
        var user = user()
        user.user2.age = 30
        user.user2.name = "ali"
        print(user.user2.age,user.user2.name)
        
        
    }


}
struct UserInfo1 {
    let name: String //let ile tanımlandığı için sabit bir değerdir ve değiştirilemez
    var age: Int  // var ile tanımlandığı için sabir bir değer değildir ve değiştirilebilir. ikinci neden "var" kullanmamız
}
struct UserInfo2 {
    var name: String
    var age: Int
    
    init(_name:String,_age: Int){
        
        print("init calisti")
        
        self.name = _name
        self.age = _age
        
    }
}
struct user {
    //var user1 = UserInfo2(_name: "selimhan", _age: 26)
    lazy var user2 = UserInfo2(_name: "selimhan", _age: 29)
    //lazy kullanarak initi çalıştırmadan yukarıda var ile tanımladığımız şekilde name ve age değerlerini tanımlayabiliyoruz.
}



