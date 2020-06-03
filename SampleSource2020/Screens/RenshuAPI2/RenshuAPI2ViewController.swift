//
//  RenshuAPIViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/25.
//

import UIKit
import Alamofire
import Kingfisher

struct DaninStruct: Codable {
    let characterId: String?
    let number: String?
    let name: String?
    let type: NenType?
    let techniques: [String]
    let imageUrl: String
}



enum NenType: String, Codable {
    case Enhancer
    case Emitter
    case Transmuter
    case Manipulator
    case Conjurer
    case Specialist
    
    func getDisplayName() -> String {
        switch self {
        case NenType.Enhancer:
            return "強化系"
        case .Emitter:
            return "放出系"
        case .Transmuter:
            return "変化系"
        case .Manipulator:
            return "操作系"
        case .Conjurer:
            return "具現化系"
        case .Specialist:
            return "特質系"
        }
    }
}

//var hoge: NenType = .Enhancer
//hoge.getDisplayName()



//struct Isonoke {
//    let sazae: Gender
//    let katsuo: Gender
//    let wakame: Gender
//    let masuo: Gender
//}
//
//enum Gender: String, Codable {
//    case male
//    case female
//}

// ここでAPIの練習
class RenshuAPI2ViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var daninInfo: [DaninStruct] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       
        fetch2()
    }
    
//

    func fetch2() {
        /// 方法2 デコードを一気にやってしまう
        AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/danin2").responseDecodable(of: [DaninStruct].self) { response in

            guard let danins = response.value else {
                // 失敗した場合
                print(response.error?.localizedDescription)
                return
            }

            // この結果を確認してみて!
            print(danins, "🐈")
            dump(danins)
        
            
            self.daninInfo = danins
            //APIを使う時は必ずreloadする
            self.tableView.reloadData()

           
        }
        
    }
    
}

extension RenshuAPI2ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daninInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RenshuAPI2TableViewCell") as! RenshuAPI2TableViewCell
        
        cell.iconImage.kf.setImage(with: URL(string: daninInfo[indexPath.row].imageUrl))

        cell.numberLabel.text = daninInfo[indexPath.row].number
        cell.nameLabel.text = daninInfo[indexPath.row].name
        cell.typeLabel.text = daninInfo[indexPath.row].type!.getDisplayName()
        cell.techniqueLabel.text = daninInfo[indexPath.row].techniques.joined(separator:"\n")
        
        return cell
    }
    
}







class Animal2 {
    var legNum: Int = 0
    var armNum: Int = 0
    
    func aaaaa() -> String {
        if legNum == 0 {
            return "哺乳類"
        }
        return "鳥類"
    }
}

class A {
    func hoge() {
        var animal = Animal2()
        
        let s = animal.aaaaa()
        
        print(s)
    }
}
