//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Jean Camargo on 23/05/22.
//

import UIKit

class LoginViewController: ViewControllerDefault {
	var onRegisterTap: (() -> Void)?
	
	lazy var loginView: LoginView = {
		let view = LoginView()
		view.backgroundColor = .white
		
		view.onRegisterTap = {
			self.onRegisterTap?()
		}
		
		return view
	}()
	
	override func loadView() {
		self.view = loginView
	}
}
