//
//  TextFieldFactory.swift
//  ComponentsFactory
//
//  Created by Andres Rojas on 27/11/19.
//  Copyright © 2019 Andres Rojas. All rights reserved.
//

import UIKit

class TextFieldFactory {

    // MARK: - Properties

    private let textField: UITextField

    // MARK: - Init

    init(_ text: String? = nil, placeholder: String? = nil) {
        textField = UITextField()
        textField.text = text
        textField.placeholder = placeholder
        textField.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Helpers

    func withSecureEntryEnabled(_ isEnabled: Bool) -> Self {
        textField.isSecureTextEntry = isEnabled

        return self
    }

    func withKeyboardType(_ type: UIKeyboardType) -> Self {
        textField.keyboardType = type

        return self
    }

    func withBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        textField.borderStyle = style

        return self
    }

    func withTextColor(_ color: UIColor) -> Self {
        textField.textColor = color

        return self
    }

    func withTextAligment(_ alignment: NSTextAlignment) -> Self {
        textField.textAlignment = alignment

        return self
    }

    func withFont(_ font: UIFont) -> Self {
        textField.font = font

        return self
    }

    func withFontSize(_ size: CGFloat) -> Self {
        textField.font = textField.font?.withSize(size)

        return self
    }

    func withClearButton(_ mode: UITextField.ViewMode) -> Self {
        textField.clearButtonMode = mode

        return self
    }

}

// MARK: Buildable implementation

extension TextFieldFactory: Buildable {
    func build() -> UITextField {
        return textField
    }
}
