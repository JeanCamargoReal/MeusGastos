//
//  HomeViewController.swift
//  MeusGastos
//
//  Created by Jean Camargo on 03/06/22.
//

import UIKit

class HomeViewController: UIViewController {
	
	private lazy var homeView: HomeView = {
		let view = HomeView()
		view.backgroundColor = .white
		
		return view
	}()
	
	
	override func loadView() {
		self.view = homeView
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		self.title = ""
	}
	
}
