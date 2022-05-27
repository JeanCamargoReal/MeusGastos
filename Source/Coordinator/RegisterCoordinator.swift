//
//  RegisterCoordinator.swift
//  MeusGastos
//
//  Created by Jean Camargo on 27/05/22.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
	let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let viewController = RegisterViewController()
		self.navigationController.pushViewController(viewController, animated: true)
	}
}



