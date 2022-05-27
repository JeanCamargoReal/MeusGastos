//
//  RegisterViewController.swift
//  MeusGastos
//
//  Created by Jean Camargo on 27/05/22.
//

import Foundation

class RegisterViewController: ViewControllerDefault {
	
	// MARK: - VisualElements
	lazy var registerView: RegisterView = {
		let view = RegisterView()
		view.backgroundColor = .red
		
		return view
	}()
	
	override func loadView() {
		self.view = registerView
	}
}
