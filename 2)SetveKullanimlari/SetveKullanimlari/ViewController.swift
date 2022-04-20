//
//  ViewController.swift
//  SetveKullanimlari
//
//  Created by Muhammed Selimhan gülsever on 9.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set tanımlama
        var meyveler = Set<String>()
        // var meyveler:Set<String>= Set<String>() olarakta tanımlayabiliriz
        
        //boş kontrolü
        if meyveler.isEmpty {
            print("meyve bulunamadı")
        }
        
      
        //set eleman ekleme
        meyveler.insert("elma")
        meyveler.insert("armut")
        meyveler.insert("kiraz")
        meyveler.insert("karpuz")
        print(meyveler)
        
        //eleman sayısı bulma
        print(meyveler.count)
        
        //eleman silme
        meyveler.remove("elma")
        print(meyveler)
        
        //set contains
        if meyveler.contains("elma") {
            print("elma var.")
        }else {
            print("elma yok eklendi!")
            meyveler.insert("elma")
        }
        print(meyveler)
        
        //arraydan farklı kullanımlar
        //4 farklı kullanım var
        //1.) intersection -> kesişim
        //2.) symetricDifference -> simetrik farkı
        //3.) union -> birleşim
        //4.) subtracking -> farkını alma
        //https://www.mobilhanem.com/wp-content/uploads/2018/03/Group-8.png
        
        let birincikume:Set<Int> = [1,2,3,4,5,6]
        let ikincikume:Set<Int> = [4,5,6,7,8,9]
        
        //intersection
        
        print(birincikume.intersection(ikincikume))
        
        // symetricDifference
        
        print(birincikume.symmetricDifference(ikincikume))
        
        //union
        
        print(birincikume.union(ikincikume))
        
        // subtracking
        
        print(birincikume.subtracting(ikincikume))
        
        //setlerde belli bir index yoktur arrayler ile önemli bir fark!
        //sıralama yapabiliriz
        var sirali = birincikume.symmetricDifference(ikincikume)
        print(sirali.sorted())
        
        //set Membershib and Equality -> kümelerde üyelik ve eşitlik durumları
        //1. isSubset : bir kümedeki değerlerin başka bir kümede olup olmadığını gösterir/alt kümesi midir?
        //2. isSuperset : bir kümenin diğer kümeyi kapsayıp-kapsamadığını gösterir./üst kümesi midir?
        //3. isDisjoint : iki kümenin ortak elamanı olup olmadığını gösterir.
        
        let houseAnimals:Set<String> = ["köpek","kedi"]
        let farmAnimals:Set<String> = ["inek","tavuk","koyun","köpek","kedi"]
        let cityAnimals:Set<String> = ["kuş","fare"]
        
        //example 1: is houseAnimals subset of farmanimals? -> örnek 1: ev hayvanları, çiftlik hayvanlarının alt kümesi midir?
        if houseAnimals.isSubset(of: farmAnimals){
            print("ev hayvanları, çiftlik elemanlarının alt kümesidir")
        }else {
            print("ev hayvanları, çiftlik elemanlarının alt kümesi değildir.")
        }
        //example 2: is farmanimals superset of houseanimals? -> örnek 2: çiftlik hayvanları, ev hayvanlarını kapsıyor mu?
        if farmAnimals.isSuperset(of: houseAnimals) {
            print("çiftlik hayvanları, ev hayvanlarını kapsıyor/üst kümesidir.")
        }else {
            print("çiftlik hayvanları, ev hayvanlarını kapsamıyor/üst kümesi değildir")
        }
         //example 3: is cityanimals disjoint of houseanimals? -> örnek 3: şehir hayvanları, ev hayvanlarından ayrı mıdır?/ortak elemanı var mıdır?
        if cityAnimals.isDisjoint(with: houseAnimals) {
            print("şehir hayvanları ile ev hayvanları arasında ortak eleman yoktur./ayrıktır")
        }else{
            print("şehir hayvanları ile ev hayvanları arasında ortak eleman vardır./ayrık değildir")
        }
         
        
        
    }


}

