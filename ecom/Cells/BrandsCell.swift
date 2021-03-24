//
//  BrandsCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class BrandsCell: UICollectionViewCell {

    weak var featuredBrands: UIView!
    var a = UIButton()
    var b = UIButton()
    var c = UIButton()
    var d = UIButton()
    var e = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        let featuredBrands = UIView(frame: .zero)
        contentView.addSubview(featuredBrands)
        featuredBrands.translatesAutoresizingMaskIntoConstraints = false
        self.featuredBrands = featuredBrands
        featuredBrands.snp.makeConstraints { (make) -> Void in
            make.top.left.equalToSuperview().offset(5)
            make.bottom.right.equalToSuperview().offset(-5)
        }
        let trending = UIButton(frame: .zero)
        featuredBrands.addSubview(trending)
        trending.translatesAutoresizingMaskIntoConstraints = false
        trending.isUserInteractionEnabled = false
        trending.setImage(UIImage(named: "Featured"), for: [])
        trending.snp.makeConstraints { (make) -> Void in
            make.top.left.equalTo(featuredBrands).offset(5)
            make.height.equalTo(80)
            make.right.equalTo(featuredBrands).offset(-5)
        }
        let skin = UIButton(frame: .zero)
        featuredBrands.addSubview(skin)
        skin.translatesAutoresizingMaskIntoConstraints = false
        skin.setImage(UIImage(named: "skin"), for: [])
        skin.clipsToBounds = true
        skin.contentMode = .scaleAspectFill
        skin.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(trending.snp.bottom)
            make.height.equalTo(250)
            make.left.right.equalTo(trending)
        }
        let sooper = UIButton(frame: .zero)
        featuredBrands.addSubview(sooper)
        sooper.translatesAutoresizingMaskIntoConstraints = false
        sooper.setImage(UIImage(named: "sooper"), for: [])
        sooper.clipsToBounds = true
        sooper.contentMode = .scaleAspectFill
        sooper.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(skin.snp.bottom)
            make.height.equalTo(250)
            make.left.right.equalTo(skin)
        }
        let axis = UIButton(frame: .zero)
        featuredBrands.addSubview(axis)
        axis.translatesAutoresizingMaskIntoConstraints = false
        axis.setImage(UIImage(named: "axis"), for: [])
        axis.clipsToBounds = true
        axis.contentMode = .scaleAspectFill
        axis.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(sooper.snp.bottom)
            make.height.equalTo(250)
            make.left.right.equalTo(sooper)
        }
        let formula = UIButton(frame: .zero)
        featuredBrands.addSubview(formula)
        formula.translatesAutoresizingMaskIntoConstraints = false
        formula.setImage(UIImage(named: "formula"), for: [])
        formula.clipsToBounds = true
        formula.contentMode = .scaleAspectFill
        formula.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(axis.snp.bottom)
            make.height.equalTo(250)
            make.left.right.equalTo(axis)
        }
        let revo = UIButton(frame: .zero)
        featuredBrands.addSubview(revo)
        revo.translatesAutoresizingMaskIntoConstraints = false
        revo.setImage(UIImage(named: "revo"), for: [])
        revo.clipsToBounds = true
        revo.contentMode = .scaleAspectFill
        revo.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(formula.snp.bottom)
            make.left.equalTo(featuredBrands)
            make.bottom.right.equalTo(featuredBrands).offset(-5)
        }
        self.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.a = skin
        self.b = sooper
        self.c = axis
        self.d = formula
        self.e = revo
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
