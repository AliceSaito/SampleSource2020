//
//  Renshu3ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/13.
//

import UIKit

// 課題
// struct Animalを定義する（image: String, name: String, point: Int）
// dataからanimals: [Animal]を作成する
//

struct Animal {
    var image: String
    var name: String
    var point: Int
}

class Renshu3ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    let datas: [[String: Any]] = [
        ["image": "animal_mark14_hitsuji", "name": "ひつじ", "point": 100],
        ["image": "animal_mark13_penguin", "name": "ペンギン", "point": 50],
        ["image": "animal_mark12_saru", "name": "さる", "point": 30],
        ["image": "animal_mark10_usagi", "name": "うさぎ", "point": 10],
        ["image": "animal_mark09_tora", "name": "トラ", "point": 200],
        ["image": "animal_mark08_kaba", "name": "カバ", "point": 130],
        ["image": "animal_mark07_lion", "name": "ライオン", "point": 120],
        ["image": "animal_mark06_uma", "name": "うま", "point": 10],
        ["image": "animal_mark05_zou", "name": "ゾウ", "point": 0],
        ["image": "animal_mark04_neko", "name": "猫", "point": -100],
        ["image": "animal_mark03_inu", "name": "いぬ", "point": -200],
        ["image": "animal_mark02_kuma", "name": "クマ", "point": 500],
        ["image": "animal_mark01_buta", "name": "ぶた", "point": 600],
    ]
    
    var animals: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Animals"
        
        datas.forEach { (data) in
            let animal = Animal(image: data["image"] as! String,
                                name: data["name"] as! String,
                                point: data["point"] as! Int)
            animals.append(animal)
        }
        
        tableView.reloadData()
        
        
    }
    
    
}

extension Renshu3ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Renshu3TableViewCell", for: indexPath) as! Renshu3TableViewCell
        cell.setup(animal: animals[indexPath.row])
        return cell
    }
    
    
}

