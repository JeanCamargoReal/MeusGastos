//
//  HomeView.swift
//  MeusGastos
//
//  Created by Jean Camargo on 03/06/22.
//

import UIKit

class HomeView: UIView {
	// MARK: - Constants
	let width: CGFloat = UIScreen.main.bounds.width - 36
	
	// MARK: - Closures
	
	// MARK: - Properts
	lazy var segmentedControl: UISegmentedControl = {
		let segment = UISegmentedControl(items: ["Essa semana", "Esse mês", "Todos"])
		segment.translatesAutoresizingMaskIntoConstraints = false
		segment.selectedSegmentIndex = 1
		segment.backgroundColor = .lightGray
		
		return segment
	}()
	
	lazy var viewInputs: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .red
		
		return view
	}()
	
	lazy var viewOutputs: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .green
		
		return view
	}()
	
	// MARK: - Inits
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setElementsVisual()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Sets
	private func setElementsVisual() {
		setSegment()
		setViewInputs()
		setViewOutputs()
	}
	
	private func setSegment() {
		self.addSubview(segmentedControl)
		
		NSLayoutConstraint.activate([
			segmentedControl.topAnchor.constraint(equalTo: self.topAnchor, constant: 70),
			segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
			segmentedControl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
		])
	}
	
	private func setViewInputs() {
		self.addSubview(viewInputs)
		
		NSLayoutConstraint.activate([
			viewInputs.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 16),
			viewInputs.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
			viewInputs.widthAnchor.constraint(equalToConstant: width/2),
			viewInputs.heightAnchor.constraint(equalToConstant: 150),
		])
	}
	
	private func setViewOutputs() {
		self.addSubview(viewOutputs)
		
		NSLayoutConstraint.activate([
			viewOutputs.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 16),
			viewOutputs.leftAnchor.constraint(equalTo: viewInputs.rightAnchor, constant: 12),
			viewOutputs.widthAnchor.constraint(equalToConstant: width/2),
			viewOutputs.heightAnchor.constraint(equalToConstant: 150),
		])
	}
	
}
