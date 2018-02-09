//
//  PhotosListViewController.swift
//  Project: MyGalary
//
//  Module: PhotosList
//
//  By Cynthia Fu 17/1/18
//  CynthiaFu 2018
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `PhotosListViewControllerInteractor` and referenced by `PhotosListViewControllerPresenter`
protocol PhotosListViewControllerPresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The View Controller for the PhotosListViewController module
class PhotosListViewControllerViewController: UIViewController {

	// MARK: - Constants

	// MARK: Variables

	var presenter: PhotosListViewControllerViewPresenterProtocol?

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter?.viewLoaded()

		view.backgroundColor = .white
    }
}

// MARK: - Storyboard Protocol

extension PhotosListViewControllerViewController: StoryboardIdentifiable {}

// MARK: - PhotosListViewController Presenter to View Protocol

extension PhotosListViewControllerViewController: PhotosListViewControllerPresenterViewProtocol {

	func set(title: String?) {
		self.title = title
	}
}
