//
//  LabelFactory.swift
//  ComponentsFactory
//
//  Created by Andres Rojas on 26/11/19.
//  Copyright © 2019 Andres Rojas. All rights reserved.
//

import UIKit

class LabelFactory {

    // MARK: - Properties

    private let label: UILabel

    // MARK: - Init

    init(_ text: String? = nil) {
        label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    func withFontSize( _ fontSize: CGFloat) -> Self {
        label.font = label.font.withSize(fontSize)

        return self
    }

    func withTextColor( _ color: UIColor) -> Self {
        label.textColor = color

        return self
    }

    func withNumberOfLines(_ numberOfLines: Int) -> Self {
        label.numberOfLines = numberOfLines

        return self
    }

    func withTextAlignment(_ textAlignment: NSTextAlignment) -> Self {
        label.textAlignment = textAlignment

        return self
    }

    func withFont(_ font: UIFont) -> Self {
        label.font = font

        return self
    }

    func withText(_ text: String) -> Self {
        label.text = text

        return self
    }

}

// MARK: Buildable implementation

extension LabelFactory: Buildable {
    func build() -> UILabel {
        return label
    }
}
