//
//  ButtonDefault.swift
//  MeusGastos
//
//  Created by Jean Camargo on 26/05/22.
//

import UIKit

class ButtonDefault: UIButton {
	init(title: String) {
		super.init(frame: .zero)
		
		initDefault(title: title)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func initDefault(title: String) {
		self.translatesAutoresizingMaskIntoConstraints = false
		self.setTitle(title, for: .normal)
		self.backgroundColor = .blue
		self.layer.cornerRadius = 15
	}
}
