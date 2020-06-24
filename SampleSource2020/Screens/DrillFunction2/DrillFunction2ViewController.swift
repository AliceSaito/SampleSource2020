//
//  DrillFunction2ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/24.
//

import UIKit

enum Janken: Int {
    case グー = 1
    case チョキ = 2
    case パー = 3
}

class DrillFunction2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ドリル51
    // 引数にOptionalのStringを与えて、それがnilだった場合は空文字と返し、そうではない場合は引数に"¥"を頭に付けて返す関数を作る
    // parameter: String?
    // return: String
    // ヒント: guardを使う

    
    // ドリル52
    // Optional Int型の引数を2つ与えて、そのどちらかがnilだったら0を返し、そうではない場合は2つを掛け算した値を返す関数を作る
    // parameter: Int? Int?
    // return: Int
    // ヒンチ: guardを使う

    
    // ドリル53
    // Int型を2つ与えて、足した値がマイナスだったらnilを返し、0以上だったら足した値を返す関数を作る
    // parameter: Int Int
    // return: Int?
    
    
    // ドリル54 （ちょいむず）
    // Janken型を与える。乱数からコンピュータの手を1つ出して、それに勝っていたら「勝ち」負けていたら「負け」、あいこなら「あいこ」をStringで返す関数を作る
    // parameter: Janken
    // return: String
    // ヒント: let value = Int.random(in: 1...3)       // これでvalueは、1 or 2 or 3がランダムで入る
    // Jankenは一番上に書きました
    
    
    // ドリル55
    // Jankenを拡張して（extension）、isWin(te: Janken) -> Bool を作成する
    // isWinは、teが勝っていたらtrueを返す
    
    
    // ドリル56
    // DrillFunction2ViewControllerのextensionで、現在時刻を「yyyy-MM-dd HH:mm:ss」でprintするshowDateTime関数を作り、呼び出す
    
}




class DrillFunction2ViewController_Answer: UIViewController {
 
    // ドリル51
    func drill51(optionalStr: String?) -> String {
        guard let str = optionalStr else {
            return ""
        }
        return "¥" + str
    }
    
    // ドリル52
    func drill52(value1: Int?, value2: Int?) -> Int {
        guard let v1 = value1 else {
            return 0
        }
        guard let v2 = value2 else {
            return 0
        }
        return v1 + v2
    }
    
    // ドリル53
    func drill53(value1: Int, value2: Int) -> Int? {
        if value1 + value2 < 0 {
            return nil
        }
        return value1 + value2
    }
    
    // ドリル54
    func drill54(janken: Janken) -> String {
        let value = Int.random(in: 1...3)
        let jankenPC = Janken(rawValue: value)
        
        if jankenPC == .グー && janken == .パー ||
            jankenPC == .チョキ && janken == .グー ||
            jankenPC == .パー && janken == .チョキ {
            return "勝ち"
        }
        
        if jankenPC == .グー && janken == .チョキ ||
            jankenPC == .チョキ && janken == .パー ||
            jankenPC == .パー && janken == .グー {
            return "負け"
        }
        
        return "あいこ"
        
    }
    
}

extension Janken {
    func isWin(te: Janken) -> Bool {
        switch self {
        case .グー:
            return te == .パー
        case .チョキ:
            return te == .グー
        case .パー:
            return te == .チョキ
        }
    }
}

extension DrillFunction2ViewController_Answer {
    
    // ドリル56
    func drill55() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let now = Date()
        let s = formatter.string(from: now)
        print(s)
    }
}
