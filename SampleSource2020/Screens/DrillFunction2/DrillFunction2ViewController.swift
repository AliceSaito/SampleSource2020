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
        
         // ドリル51
        let i = setYen(parameter: "10")
        print(i)
        //もしくは
        let h = setYen(parameter: nil)
        print(h)
        
        // ドリル52
        let m = multiplication(para: 5, meter: 7)
        print(m)
        
        // ドリル53
        let f = subtraction(para: 3, meter: 1)
        print(f)
        
        // ドリル54
        let s = fight(parameter: Janken.グー)
        print(s)
        
        // ドリル55
        let w: Janken = Janken.チョキ
        let ww = w.isWin(te: Janken.グー)
        print(ww)
        
        // ドリル56
        showDateTime()
        
        
    }
    
    // ドリル51*
    // 引数にOptionalのStringを与えて、それがnilだった場合は"nilです"と返し、そうではない場合は引数に"¥"を頭に付けて返す関数を作る
    // parameter: String?
    // return: String
    // ヒント: guardを使う
    
    func setYen(parameter: String?) -> String {
        guard let str = parameter else {
            return "nilです"
        }
        return "¥" + str
    }
    
    // ドリル52**
    // Optional Int型の引数を2つ与えて、そのどちらかがnilだったら0を返し、そうではない場合は2つを掛け算した値を返す関数を作る
    // parameter: Int? Int?
    // return: Int
    // ヒント: guardを使う
    
    func multiplication(para: Int?, meter: Int?) -> Int {
        //guard文では「&&」や「||」は使えない。「,」だけ使える。
           guard let str1 = para, let str2 = meter else {
               return 0
           }
           return str1 * str2
       }
    
    // ドリル53**
    // Int型を2つ与えて、足した値がマイナスだったらnilを返し、0以上だったら足した値を返す関数を作る
    // parameter: Int Int
    // return: Int?
    
    func subtraction(para: Int, meter: Int) -> Int? {
        if para + meter < 0 {
            return nil
        }
        return para + meter
    }
    
    // ドリル54**
    // Janken型を与える。乱数からコンピュータの手を1つ出して、それに勝っていたら「勝ち」負けていたら「負け」、あいこなら「あいこ」をStringで返す関数を作る
    // parameter: Janken
    // return: String
    // ヒント: let value = Int.random(in: 1...3)       // これでvalueは、1 or 2 or 3がランダムで入る
    // Jankenは一番上に書きました
    
    func fight(parameter: Janken) -> String {
        let value = Int.random(in: 1...3)
        //rawValueは = 1, = 2, = 3のこと。
        let jankenPC = Janken(rawValue: value)
        
        
        if jankenPC == Janken.グー && parameter == Janken.パー ||
            jankenPC == Janken.チョキ && parameter == Janken.グー ||
            jankenPC == Janken.パー && parameter == Janken.チョキ {
            return "勝ち"
        }
            
        else if jankenPC == Janken.グー && parameter == Janken.チョキ ||
            jankenPC == Janken.チョキ && parameter == Janken.パー ||
            jankenPC == Janken.パー && parameter == Janken.グー {
            return "負け"
        }
            
        else {
            return "あいこ"
        }
    }
}
        
        // ドリル55**
        // Jankenを拡張して（extension）、isWin(te: Janken) -> Bool を作成する
        // isWinは、teが勝っていたらtrueを返す


extension Janken {
    func isWin(te: Janken) -> Bool {
        switch self {
        case .グー:
            if te == .パー {
                return true
            }
            else {
                return false
            }
        case .チョキ:
            if te == .グー {
                return true
            }
            else {
                return false
            }
        case .パー:
            if te == .チョキ {
                return true
            }
            else {
                return false
            }
        }
    }
}

    
// ドリル56**
// DrillFunction2ViewControllerのextensionで、現在時刻を「yyyy-MM-dd HH:mm:ss」でprintするshowDateTime関数を作り、呼び出す

extension DrillFunction2ViewController {
    func showDateTime(){
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ja_JP")
        dateFormater.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = dateFormater.string(from: Date())
        print(date)
    }
}








// -----------------↓答え↓------------------- //













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
        return v1 * v2
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

// ドリル55

//let a: Bool = (1 == 1)
//aはtrueになる。
//let a: Bool = (1 != 1)
//aはfalseになる。

//別解答
extension Janken {
    func isWin2(te: Janken) -> Bool {
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
    func  showDateTime2() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let now = Date()
        let s = formatter.string(from: now)
        print(s)
    }
}
