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

    func configure(isChecked: Bool, text: String) {
        checkImageView.image = isChecked ? UIImage(named: "check") : nil
        itemLabel.text = text
    }
}
