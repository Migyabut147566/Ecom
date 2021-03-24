//
//  HeaderCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class HeaderCell: UICollectionViewCell {

    weak var imageView: UIImageView!
    var cartBtn: UIButton = {
        let label = UIButton()
        var icon = UIImage(systemName: "bag")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        label.setImage(icon, for: [])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)

        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageView)
        contentView.addSubview(cartBtn)

        imageView.image = UIImage(named: "bar-logo")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide)
            make.left.equalTo(120)
            make.right.equalTo(-120)
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
        self.imageView = imageView
        cartBtn.snp.makeConstraints { (make) -> Void in
            make.bottom.equalTo(self.imageView).offset(-5)
            make.right.equalTo(-20)
            make.height.equalTo(20)
            make.width.equalTo(15)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
