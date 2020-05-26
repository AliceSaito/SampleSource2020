//
//  RenshuAPIViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/25.
//

import UIKit
import Alamofire
import Kingfisher

struct Danin: Codable {
    let id: String
    let number: String
    let name: String
    let type: String
    let techniques: [String]
    let image_url: String
}

// ここでAPIの練習
class RenshuAPIViewController: UIViewController {
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var daninInfo: [Danin] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        fetch2()
    }
    
//    func fetch1() {
//        /// 方法1　responseを取得する方法
//        AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseJSON { (response) in
//
//            // jsonをData型を取得できる
//            guard let data = response.data else {
//                return
//            }
//
//            do {
//                // Data型のdataを、[Danin]でデコードする
//                //encode：使いたい形式に変換
//                //decode：形式を戻す
//                let danins = try JSONDecoder().decode([Danin].self, from: data)
//
//                // この結果を確認してみて!
//                print(danins, "❤️")
//            } catch {
//
//                // 失敗したらこっちに入る（do catch try）
//                print(error.localizedDescription)
//            }
//        }
//    }

    func fetch2() {
        /// 方法2 デコードを一気にやってしまう
        AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseDecodable(of: [Danin].self) { response in

            // 成功したらrespnse.valueに[Danin]が入っている
            //ココのvalueはkey:valueのvalueとは違う。
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

            self.indicator.stopAnimating() 
            
        }
        
        
    }
    
    
}

extension RenshuAPIViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daninInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RenshuAPITableViewCell") as! RenshuAPITableViewCell
        
        cell.iconImage.kf.setImage(with: URL(string: daninInfo[indexPath.row].image_url))
        
        cell.numberLabel.text = daninInfo[indexPath.row].number
        cell.nameLabel.text = daninInfo[indexPath.row].name
        cell.typeLabel.text = daninInfo[indexPath.row].type
        cell.techniqueLabel.text = daninInfo[indexPath.row].techniques.joined(separator:"\n")
        
        return cell
    }
    
    
    
    
    
    
    
    
}





// メモのフォルダに入ってるテキストをコピペした

/*
 APIを受信（get、fetch）するにはいくつか方法がある
 簡単なのはAlamofireというLibraryと、Codableを使う方法

 ①受信するデータ（Json = DictonaryとArrayの混合）の構造を理解する

 今回のデータ
 https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin

 [] この中はArray
 {} この中はDictionary

 DictionaryとなるまとまりをStructで定義する
 Codableを継承するようにする（説明は一旦はぶく）

 /// 団員1人のデータ
 struct Danin: Codable {
     let id: String
     let number: String
     let name: String
     let type: String
     let techniques: [String]
     let image_url: String
 }

 ないかもしれないデータは　String?のようにOptionalにする
 keyと変数名は確実に同じようにする必要がある
 そうしないとエラーになる
 もしくは「この変数は、このkeyに対応する」というように書くことも出来る（省略）


 // そしてこのようにfetchリクエストする

 import Alamofire

 AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseDecodable(of: [Danin].self) { response in
     guard let danins = response.value else {
         return
     }

     // ここにDaninの配列が入る
     // これを用いてUITableViewに団員のデータを並べてみてください
     dump(danins)
 }


 ______________

 参考コード

 struct Danin: Codable {
     let id: String
     let number: String
     let name: String
     let type: String
     let techniques: [String]
     let image_url: String
 }

 override func viewDidLoad() {
     super.viewDidLoad()

     // ここでfetchしてみる
 }

 func fetch1() {
     /// 方法1　responseを取得する方法
     AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseJSON { (response) in

         // jsonをData型を取得できる
         guard let data = response.data else {
             return
         }

         do {
             // Data型のdataを、[Danin]でデコードする
             let danins = try JSONDecoder().decode([Danin].self, from: data)

             // この結果を確認してみて!
             print(danins)
         } catch {

             // 失敗したらこっちに入る（do catch try）
             print(error.localizedDescription)
         }
     }
 }

 func fetch2() {
     /// 方法2 デコードを一気にやってしまう
     AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseDecodable(of: [Danin].self) { response in

         // 成功したらrespnse.valueに[Danin]が入っている
         guard let danins = response.value else {
             // 失敗した場合
             print(response.error?.localizedDescription)
             return
         }

         // この結果を確認してみて!
         dump(danins)
     }
 }

 */


// 画像読み込みLibraryの使い方 に書いていることをコピペ

/*
 例：Kingfisher
 https://github.com/onevcat/Kingfisher

 // これだけ！！！
 
 import Kingfisher
 
 func aaa() {
    let url = URL(string: "https://example.com/image.png")
    imageView.kf.setImage(with: url)
 }

 
 */
