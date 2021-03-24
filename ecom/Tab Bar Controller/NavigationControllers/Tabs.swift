//
//  Tabs.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit

enum Tabs: String, CaseIterable {
    case Shop = "Shop"
    case Browse = "Browse"
    case Brands = "Brands"
    case You = "You"
    
    var viewController: UIViewController {
        switch self {
        case .Shop:
            return ViewController()
        case .Browse:
            return BrowseViewController()
        case .Brands:
            return BrandsViewController()
        case .You:
            return YouViewController()
        }
    }
    var icon: UIImage? {
        switch self {
        case .Shop:
            return UIImage(named: "app-icon")!
        case .Browse:
            return UIImage(systemName: "doc.text.magnifyingglass")!
        case .Brands:
            return UIImage(systemName: "tag.fill")!
        case .You:
            return UIImage(systemName: "person.fill")!
        }
    }
    var displayTitle: String {
        return self.rawValue.capitalized(with: nil)
    }
}
