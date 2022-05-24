//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Jean Camargo on 23/05/22.
//

import UIKit

class LoginViewController: UIViewController {
	
	lazy var loginView: LoginView = {
		let view = LoginView()
		view.backgroundColor = .white
		
		return view
	}()
	
	override func loadView() {
		self.view = loginView
	}
}
