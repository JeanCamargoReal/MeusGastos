//
//  RegisterView.swift
//  MeusGastos
//
//  Created by Jean Camargo on 27/05/22.
//

import UIKit

class RegisterView: UIView {
	//MARK: - Closures
	var onLoginTap: (() -> Void)?
	
	//MARK: - Visual Elements
	let titleLabel = LabelDefault(text: "Cadastro de usuário", font: UIFont.systemFont(ofSize: 25, weight: .semibold))
	let emailLabel = LabelDefault(text: "Email")
	let passwordLabel = LabelDefault(text: "Senha")
	let emailTextField = TextFieldDefault(placeholder: "Email para o cadastro", keyboardType: .emailAddress)
	let passwordTextField = TextFieldDefault(placeholder: "Sua senha para o cadastro", isSecureTextEntry: true)
	let registerButton = ButtonDefault(title: "Registrar usuário")
	let loginButton = ButtonDefault(title: "Logar")
	
	//MARK: - Inits
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setVisualElements()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setVisualElements() {
		setTitle()
		setEmail()
		setPassword()
		setRegisterButton()
		setLoginButton()
	}
	
	private func setTitle() {
		self.addSubview(titleLabel)
		
		NSLayoutConstraint.activate([
			titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
			titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
			titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
		])
	}
	
	private func setEmail() {
		self.addSubview(emailLabel)
		self.addSubview(emailTextField)
		
		NSLayoutConstraint.activate([
			emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
			emailLabel.leftAnchor.constraint(equalTo: titleLabel.leftAnchor),
			emailLabel.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
			
			emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
			emailTextField.leftAnchor.constraint(equalTo: emailLabel.leftAnchor),
			emailTextField.rightAnchor.constraint(equalTo: emailLabel.rightAnchor),
			emailTextField.heightAnchor.constraint(equalToConstant: 40)
		])
	}
	
	private func setPassword() {
		self.addSubview(passwordLabel)
		self.addSubview(passwordTextField)
		
		NSLayoutConstraint.activate([
			passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
			passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
			passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
			
			passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
			passwordTextField.leftAnchor.constraint(equalTo: passwordLabel.leftAnchor),
			passwordTextField.rightAnchor.constraint(equalTo: passwordLabel.rightAnchor),
			passwordTextField.heightAnchor.constraint(equalToConstant: 40),
		])
	}
	
	private func setRegisterButton() {
		self.addSubview(registerButton)
				
		NSLayoutConstraint.activate([
			registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
			registerButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
			registerButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
			registerButton.heightAnchor.constraint(equalToConstant: 40),
		])
	}
	
	private func setLoginButton() {
		self.addSubview(loginButton)
		
		loginButton.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
		
		NSLayoutConstraint.activate([
			loginButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 30),
			loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
			loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
			loginButton.heightAnchor.constraint(equalToConstant: 40),
		])
	}
	
	@objc
	func loginButtonTap() {
		self.onLoginTap?()
	}
}
