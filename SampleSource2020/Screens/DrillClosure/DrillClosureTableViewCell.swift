//
//  DrillClosureTableViewCell.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/08/03.
//

import UIKit

class DrillClosureTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        textField.text = "🐶🐶🐶"
    }
    
    // ここに定義
    var didTapButton: ((_ text: String) -> Void)!
    
    @IBAction func tappedPrintButton(_ sender: UIButton) {
        didTapButton(textField.text ?? "")
    }
}
