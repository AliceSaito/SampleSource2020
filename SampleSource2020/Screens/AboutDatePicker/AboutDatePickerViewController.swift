//
//  AboutDatePickerViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/04.
//

import UIKit

/// UIDatePickerをキーボードの代わりに使うサンプル
class AboutDatePickerViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    var datePicker: UIDatePicker = UIDatePicker()
    var toolBar = UIToolbar()

    override func viewDidLoad() {
        super.viewDidLoad()

        // キーボードの代わりにUIDatePickerを表示する
        textField.inputView = datePicker
        // IBActionが使えないからコードでvaueChangedを設定する
        datePicker.addTarget(self, action: #selector(self.valueChanged(sender:)), for: UIControl.Event.valueChanged)

        // inputViewの上にくっついてるバーのようなView
        toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        textField.inputAccessoryView = toolBar

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapView(sender:)))
        view.addGestureRecognizer(tap)
    }

    @objc func tapView(sender: Any?) {
        view.endEditing(true)
    }

    @objc func valueChanged(sender: UIDatePicker) {
        print(sender.date)
    }
}
