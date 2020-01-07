//
//  ButtonFactory.swift
//  ComponentsFactory
//
//  Created by Andres Rojas on 26/11/19.
//  Copyright © 2019 Andres Rojas. All rights reserved.
//

import UIKit

public class ButtonFactory {

    // MARK: - Properties
    private let button: UIButton

    // MARK: - Init

    init(_ title: String? = nil) {
        button = UIButton()
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    public func addTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> Self {
      button.addTarget(target, action: action, for: event)

      return self
    }

    public func applyStyle(_ style: ButtonStyle) -> Self {
        switch style {
        case .primary:
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .systemBlue
        case .basic:
            button.setTitleColor(.systemBlue, for: .normal)
        }

        return self
    }

    public enum ButtonStyle {
        case primary
        case basic
    }
}

// MARK: Buildable implementation

extension ButtonFactory: Buildable {
    public func build() -> UIButton {
        return button
    }
}
