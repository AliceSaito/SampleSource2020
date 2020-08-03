//
//  DrillClosureViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/08/03.
//

import UIKit

class DrillClosureViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 課題1. 3秒後に実行されるコードを書いて、Closureを使ってみる
        //
        // 書き方
        // Dispatch.main.asyncAfter(deadline: .now() + 3.0, excute: {
        //     print("3秒後😀 この中はClosure")
        // })
        
        
        // 課題2. 3秒後に実行されるコードより下に書いたコードが先に実行されることを確認する
        //
        // 書き方
        // Dispatch.main.asyncAfter(deadline: .now() + 3.0, excute: {
        //     print("3秒後😀")
        // })
        // print("こっちが先に実行されることを確認する🐈")
        
        
        // 課題3. 赤いViewの高さをAnimationで変更して、完了後に戻してみる
        //
        // 書き方
        // UIView.animate(withDuration: 5.0, animations: {
        //     // アニメーションの中
        //     self.heightConstraint.constant = 200.0
        //     self.view.layoutIfNeeded()
        // }, completion: { finished in
        //     // 終了後のClosure
        //     self.heightConstraint.constant = 100.0
        // })
        
        
        // 課題4. 空のClosureを作る（emptyClosure）
        // これに、処理を書く
        // var emptyClosure: (() -> Void) = {
        //     print("えんぷてぃ")
        // }
        // これを実行してみる
        
        
        // 課題5. 課題4の空のClosureを、5回呼んでみる
        
        // 課題6. intの引数を取り、それを表示するClosureを作る
        // これを実行してみる
        
        // 課題7. intの引数を取り、それを2倍するClosureを作る
        // これを実行して、返却値をprintする

        // 課題8. 既に用意してあるTableViewとCellのClosureについて見てみる
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        


    }
}

extension DrillClosureViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrillClosureTableViewCell", for: indexPath) as! DrillClosureTableViewCell
        
        cell.didTapButton = { text in
            // textfieldの中身をprintする
            print(text)
            // ここでindexPathはスコープ内
            print(indexPath)
        }
        
        return cell
    }
    
    
}


//MARK: - closureの考え方1

class Patient {
    func 診察してもらう() {
        let doctor = Doctor()
        let result = doctor.closure(37.5)
        print(result)   // "風邪です"
    }
}

class Doctor {
    
    var closure: ((_ temperature: Double) -> String) = { temperature -> String in
        if temperature > 37.0 {
            return "風邪です"
        }
        else {
            return "健康です"
        }
    }
}
