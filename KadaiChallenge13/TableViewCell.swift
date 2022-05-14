//
//  TableViewCell.swift
//  KadaiChallenge13
//
//  Created by 澤田世那 on 2022/05/14.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var checkImageView: UIImageView!
    @IBOutlet private weak var itemLabel: UILabel!

    func configure(image: UIImage?, text: String) {
        checkImageView.image = image
        itemLabel.text = text
    }
}
