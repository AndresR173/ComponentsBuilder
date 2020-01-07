//
//  TextFieldFactory.swift
//  ComponentsFactory
//
//  Created by Andres Rojas on 27/11/19.
//  Copyright © 2019 Andres Rojas. All rights reserved.
//

import UIKit

public class TextFieldBuilder {

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

    public func withSecureEntryEnabled(_ isEnabled: Bool) -> Self {
        textField.isSecureTextEntry = isEnabled

        return self
    }

    public func withKeyboardType(_ type: UIKeyboardType) -> Self {
        textField.keyboardType = type

        return self
    }

    public func withBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        textField.borderStyle = style

        return self
    }

    public func withTextColor(_ color: UIColor) -> Self {
        textField.textColor = color

        return self
    }

    public func withTextAligment(_ alignment: NSTextAlignment) -> Self {
        textField.textAlignment = alignment

        return self
    }

    public func withFont(_ font: UIFont) -> Self {
        textField.font = font

        return self
    }

    public func withFontSize(_ size: CGFloat) -> Self {
        textField.font = textField.font?.withSize(size)

        return self
    }

    public func withClearButton(_ mode: UITextField.ViewMode) -> Self {
        textField.clearButtonMode = mode

        return self
    }

}

// MARK: Buildable implementation

extension TextFieldBuilder: Buildable {
    public func build() -> UITextField {
        return textField
    }
}
