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
		view.backgroundColor = .red
		
		return view
	}()
	
	
	override func loadView() {
		self.view = homeView
	}
	
}
