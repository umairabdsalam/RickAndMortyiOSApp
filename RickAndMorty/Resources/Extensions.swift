//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Umair Salam on 3/8/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
