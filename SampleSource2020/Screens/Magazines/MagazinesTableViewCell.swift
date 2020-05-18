//
//  MagazinesTableViewCell.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/18.
//

import UIKit

class MagazinesTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var publisherLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    /// MagazineDatasでデータを詰める。★を使う時は不要。
    func setup(magazineData: MagazineDatas) {
        coverImage.image = UIImage(named: magazineData.image)
        nameLabel.text = magazineData.name
        publisherLabel.text = magazineData.publisher
        releaseDateLabel.text = magazineData.releaseDate
    }
}
