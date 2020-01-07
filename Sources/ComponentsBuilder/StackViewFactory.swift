//
//  StackViewFactory.swift
//  Beneficios
//
//  Created by Andres Rojas on 19/12/19.
//  Copyright © 2019 Tu Ciudad en Red. All rights reserved.
//

import UIKit

class StackViewFactory {

    // MARK: - Properties

    let stackView: UIStackView

    // MARK: - Init

    init(axis: NSLayoutConstraint.Axis = .vertical) {
        stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
    }

    // MARK: - Helpers

    func withSpacing(_ spacing: CGFloat) -> Self {
        stackView.spacing = spacing

        return self
    }

    func withDistribution(_ distribution: UIStackView.Distribution) -> Self {
        stackView.distribution = distribution

        return self
    }

    func withAlignment(_ alignment: UIStackView.Alignment) -> Self {
        stackView.alignment = alignment

        return self
    }

    func withArrangedSubView(_ view: UIView) -> Self {
        stackView.addArrangedSubview(view)

        return self
    }
}

// MARK: Buildable implementation

extension StackViewFactory: Buildable {
    func build() -> UIStackView {
        return stackView
    }
}
