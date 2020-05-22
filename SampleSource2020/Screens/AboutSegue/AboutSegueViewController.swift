//
//  AboutSegueViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/22.
//

import UIKit

class AboutSegueViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    struct CharacterType {
        var image: UIImage
        var name: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// ボタン1を押すと、「next」のsegueが発火する
    @IBAction func tappedButton1(_ sender: Any) {
        // ①
        // こちらはsenderがnil
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    /// ボタン2を押すと、「nextModaly」のsegueが発火する
    @IBAction func tappedButton2(_ sender: Any) {
        // ①
        // こっちはsenderでデータを送ってみる
        performSegue(withIdentifier: "nextModaly", sender: CharacterType(image: UIImage(named: "gon")!, name: "ゴン"))
    }
    
    /// ③segueにより遷移する時に呼ばれる関数
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // identifierにより分ける
        
        if segue.identifier == "next" {
            // segeのidentifierがnextなら

            // 次の画面はAboutSegueNextViewControllerだから、キャストしてしまう
            if let vc = segue.destination as? AboutSegueNextViewController {
                
                // こちらのsegueの場合は、imageViewとnameLabelからデータを取るようにしてみる
                vc.image = imageView.image
                vc.name = nameLabel.text
            }
        }
        if segue.identifier == "nextModaly" {
            // segeのidentifierがnextModalyなら
            
            // 次の画面はAboutSegueNextViewControllerだから、キャストしてしまう
            if let vc = segue.destination as? AboutSegueNextViewController {
                
                // senderを使う、送ったsenderはCharacterTypeなのでキャストする
                if let data = sender as? CharacterType {
                    
                    // こちらのsegueの場合は、ゴンを表示する
                    vc.image = data.image
                    vc.name = data.name
                }
            }
        }
    }
    

}
