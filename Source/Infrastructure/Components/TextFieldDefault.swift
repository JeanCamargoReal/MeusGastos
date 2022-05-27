//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by Jean Camargo on 24/05/22.
//

import UIKit

class TextFieldDefault: UITextField {
	// MARK: - Constants
	let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
	
	// MARK: - Inits
	init(placeholder: String, keyboardType: UIKeyboardType = .default) {
		super .init(frame: .zero)
		
		initDefault(placeholder: placeholder)
		self.keyboardType = keyboardType
		
	}
	
	init(placeholder: String, isSecureTextEntry: Bool) {
		super .init(frame: .zero)
		
		initDefault(placeholder: placeholder)
		self.isSecureTextEntry = isSecureTextEntry
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func initDefault(placeholder: String) {
		self.translatesAutoresizingMaskIntoConstraints = false
		self.layer.borderColor = UIColor.black.cgColor
		self.layer.borderWidth = 1
		self.backgroundColor = .lightGray
		self.placeholder = placeholder
	}
	
	// MARK: - Add Padding in textField
	override open func textRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.inset(by: padding)
	}
	
	override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.inset(by: padding)
	}
	
	override func editingRect(forBounds bounds: CGRect) -> CGRect {
		return bounds.inset(by: padding)
	}
}
