//
//  ViewController.swift
//  KadaiChallenge13
//
//  Created by 澤田世那 on 2022/05/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let itemLists = [(name: "りんご", isCheck: false),
                             (name: "みかん", isCheck: true),
                             (name: "バナナ", isCheck: false),
                             (name: "パイナップル", isCheck: true)
                            ]

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil),
                           forCellReuseIdentifier: "TableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemLists.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        // swiftlint:disable:next force_cast
        as! TableViewCell
        cell.configure(image: itemLists[indexPath.row].isCheck ? UIImage(named: "check") : nil,
                       text: itemLists[indexPath.row].name)
        return cell
    }

}
