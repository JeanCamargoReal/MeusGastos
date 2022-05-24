//
//  LoginView.swift
//  MeusGastos
//
//  Created by Jean Camargo on 23/05/22.
//

import UIKit

class LoginView: UIView {
	// MARK: - Visual Elements
	
	let titleLabel: UILabel = {
		let lb = UILabel()
		lb.translatesAutoresizingMaskIntoConstraints = false
		lb.text = "Login"
		lb.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
		
		return lb
	}()
	
	let emailLabel: UILabel = {
		let lb = UILabel()
		lb.text = "Email"
		lb.translatesAutoresizingMaskIntoConstraints = false
		
		return lb
	}()
	
	let emailTextField: UITextField = {
		let tf = UITextField()
		tf.translatesAutoresizingMaskIntoConstraints = false
		tf.layer.borderColor = UIColor.black.cgColor
		tf.layer.borderWidth = 1
		tf.backgroundColor = .lightGray
		tf.placeholder = "Informe seu email"
		
		return tf
	}()
	
	let passwordLabel: UILabel = {
		let lb = UILabel()
		lb.translatesAutoresizingMaskIntoConstraints = false
		lb.text = "Senha"
		
		return lb
	}()
	
	let passwordTextField: UITextField = {
		let tf = UITextField()
		tf.translatesAutoresizingMaskIntoConstraints = false
		tf.layer.borderColor = UIColor.black.cgColor
		tf.layer.borderWidth = 1
		tf.backgroundColor = .lightGray
		tf.placeholder = "Informe seu senha"
		
		return tf
	}()
	
	let loginButton: UIButton = {
		let bt = UIButton()
		bt.translatesAutoresizingMaskIntoConstraints = false
		bt.setTitle("Entrar", for: .normal)
		bt.backgroundColor = .blue
		bt.layer.cornerRadius = 15
		
		return bt
	}()
	
	// MARK: - Inits
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
	
	private func setLoginButton() {
		self.addSubview(loginButton)
		
		NSLayoutConstraint.activate([
			loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
			loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
			loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
			loginButton.heightAnchor.constraint(equalToConstant: 40),
		])
	}
}
