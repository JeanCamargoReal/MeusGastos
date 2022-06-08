//
//  ViewInputOutput.swift
//  MeusGastos
//
//  Created by Jean Camargo on 08/06/22.
//

import Foundation
import UIKit

enum EntryType {
	case Input
	case Output
}

class ViewInputOutput: UIView {
	
	// MARK: - Closures
	
	// MARK: - Properties
	var entryType: EntryType
	
	lazy var iconImageView: UIImageView = {
		let imageView = UIImageView(image: UIImage(named: ""))
		imageView.translatesAutoresizingMaskIntoConstraints = false
		
		return imageView
	}()
	
	lazy var valueLabel = LabelDefault(text: "", font: UIFont.systemFont(ofSize: 25, weight: .bold))
	lazy var subTitleLabel = LabelDefault(text: "", font: UIFont.systemFont(ofSize: 14, weight: .light))
	
	// MARK: - Inits
	init(entryType: EntryType) {
		self.entryType = entryType
		
		super.init(frame: .zero)
		
		setElementsVisual()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Sets
	
	func setValue(value: Double) {
		valueLabel.text = String(value)
	}
	
	private func setElementsVisual() {
		setEntryType()
		setIcon()
		setValue()
		setSubTittle()
	}
	
	private func setEntryType() {
		switch self.entryType {
			case .Input:
				iconImageView.image = UIImage(named: "arrowUp")
				subTitleLabel.text = "Entradas do mês"
				self.backgroundColor = .inputsColor
			case .Output:
				iconImageView.image = UIImage(named: "arrowDown")
				subTitleLabel.text = "Entradas do mês"
				self.backgroundColor = .outputsColor
		}
	}
	
	private func setIcon() {
		self.addSubview(iconImageView)
		
		NSLayoutConstraint.activate([
			iconImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
			iconImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
			iconImageView.widthAnchor.constraint(equalToConstant: 24),
			iconImageView.heightAnchor.constraint(equalToConstant: 24),
		])
	}
	
	private func setValue() {
		self.addSubview(valueLabel)
		self.valueLabel.textAlignment = .center
		self.valueLabel.text = "R$ 0,00"
		self.valueLabel.adjustsFontSizeToFitWidth = true
		self.valueLabel.minimumScaleFactor = 0.5
		
		NSLayoutConstraint.activate([
			valueLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20),
			valueLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
			valueLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
		])
	}
	
	private func setSubTittle() {
		self.addSubview(subTitleLabel)
		self.subTitleLabel.textAlignment = .center
		self.subTitleLabel.adjustsFontSizeToFitWidth = true
		self.subTitleLabel.minimumScaleFactor = 0.5
		
		NSLayoutConstraint.activate([
			subTitleLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 4),
			subTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
			subTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
		])
	}
}
