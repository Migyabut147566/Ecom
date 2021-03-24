//
//  NavigationTabCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class SearchCell: UICollectionViewCell {

    weak var searchField: UISearchBar!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let searchField = UISearchBar(frame: .zero)
        contentView.addSubview(searchField)
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.setImage(UIImage(systemName: "magnifyingglass")?.withRenderingMode(.alwaysOriginal).withTintColor(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)), for: .search, state: .normal)
        searchField.setPositionAdjustment(UIOffset(horizontal: 10, vertical: 0), for: .search)
        searchField.searchTextField.attributedPlaceholder = NSAttributedString(string: " I'm looking for.. ", attributes: [.foregroundColor: UIColor.black])
        searchField.backgroundImage = UIImage()
        searchField.searchTextField.clearButtonMode = .never
        searchField.snp.makeConstraints { (make) -> Void in
            make.top.bottom.equalTo(safeAreaInsets.top)
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        self.searchField = searchField
        searchField.layer.cornerRadius = 8
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
