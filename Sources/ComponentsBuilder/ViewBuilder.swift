//
//  ViewFactory.swift
//  Beneficios
//
//  Created by Andres Rojas on 19/12/19.
//  Copyright © 2019 Tu Ciudad en Red. All rights reserved.
//

import UIKit

public class ViewBuilder {

    // MARK: - Properties

    private let view: UIView

    // MARK: - Init

    init() {
        view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    public func withBackgrounColor(_ color: UIColor) -> Self {
        view.backgroundColor = color

        return self
    }

    public func withCornerRadius(_ radius: CGFloat) -> Self {
        view.layer.cornerRadius = radius

        return self
    }

    public func withSubView(_ view: UIView) -> Self {
        view.addSubview(view)

        return self
    }
}


// MARK: Buildable implementation

extension ViewBuilder: Buildable {
    public func build() -> UIView {
        return view
    }
}
