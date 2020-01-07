//
//  ViewFactory.swift
//  Beneficios
//
//  Created by Andres Rojas on 19/12/19.
//  Copyright © 2019 Tu Ciudad en Red. All rights reserved.
//

import UIKit

class ViewFactory {

    // MARK: - Properties

    private let view: UIView

    // MARK: - Init

    init() {
        view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    func withBackgrounColor(_ color: UIColor) -> Self {
        view.backgroundColor = color

        return self
    }

    func withCornerRadius(_ radius: CGFloat) -> Self {
        view.layer.cornerRadius = radius

        return self
    }

    func withSubView(_ view: UIView) -> Self {
        view.addSubview(view)

        return self
    }
}


// MARK: Buildable implementation

extension ViewFactory: Buildable {
    func build() -> UIView {
        return view
    }
}
