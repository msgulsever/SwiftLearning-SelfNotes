//
//  ViewController.swift
//  StackveQueue
//
//  Created by Muhammed Selimhan gülsever on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //stack
        //eklenen son eleman her zaman stack'in ilk elemanı olur
        
        var meyveler = Stack<String>()
        //push ile eleman ekleme
        
        meyveler.push("elma")
        meyveler.push("kiraz")
        meyveler.push("karpuz")
        meyveler.push("ayva")
        meyveler.push("limon")
        print(meyveler)
        
        // pop ile eleman çıkarma
        let soneleman = meyveler.pop()
        print(soneleman)
        print(meyveler)
        
        // en üstteki elemanı bulma
        if let enust = meyveler.TopValue {
            print("en üstteki eleman: \(enust)")
        }
        
        
        //Queue
        
        //ilk eklenen eleman ilk çıkar FIFA(first in first out)
        //oluşturma
        
        var q = Queue<String>()
        
        //ekleme
        q.enqueue("selimhan")
        q.enqueue("ahmet")
        q.enqueue("zeynep")
        q.enqueue("cahit")
        q.enqueue("enes")
        
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
        print(q.dequeue())
        print(q.enqueue("Tahsin"))
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
        
        
        
        
        
        
        
        
        
    }


}
//<T> tüm veri tipleri ile tanımlanabilir demektir!
struct Stack<T> {
    var values = [T]()
    var TopValue: T?{
        return values.isEmpty ? nil : values[values.count - 1] // max index = values.count - 1
    }
    //struct kullandığımız için mutating kullanıyoruz.
    mutating func push(_ value:T) {
        values.append(value)
    }
    mutating func pop() -> T {
        return values.removeLast()
    }
}

struct Queue<T> {
    //queue oluşturma
    var array = [T]()
    //enqueue işlemi
    public mutating func enqueue(_ element:T){
        array.append(element )
    }
    //dequeue işlemi
    public mutating func dequeue() -> T?{
        if isEmpty{
            return nil
        }
        return array.removeFirst()
    }
    //computed property
    
    // ilk elemanı bulma
    public var front: T? {
        return array.first
    }
    //son elemanı bulma
    public var rear: T? {
        return array.last
    }
    // boş mu kontrol
    public var isEmpty:Bool {
        return array.isEmpty
    }
    // Queue eleman sayısı
    public var count:Int {
        return array.count
    }
    
    
}

