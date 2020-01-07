//
//  StackViewFactory.swift
//  Beneficios
//
//  Created by Andres Rojas on 19/12/19.
//  Copyright © 2019 Tu Ciudad en Red. All rights reserved.
//

import UIKit

public class StackViewBuilder {

    // MARK: - Properties

    private let stackView: UIStackView

    // MARK: - Init

    init(axis: NSLayoutConstraint.Axis = .vertical) {
        stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
    }

    // MARK: - Helpers

    public func withSpacing(_ spacing: CGFloat) -> Self {
        stackView.spacing = spacing

        return self
    }

    public func withDistribution(_ distribution: UIStackView.Distribution) -> Self {
        stackView.distribution = distribution

        return self
    }

    public func withAlignment(_ alignment: UIStackView.Alignment) -> Self {
        stackView.alignment = alignment

        return self
    }

    public func withArrangedSubView(_ view: UIView) -> Self {
        stackView.addArrangedSubview(view)

        return self
    }
}

// MARK: Buildable implementation

extension StackViewBuilder: Buildable {
    public func build() -> UIStackView {
        return stackView
    }
}
