//
//  PhotosListPresenter.swift
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

/// Should be conformed to by the `PhotosListPresenterPresenter` and referenced by `PhotosListPresenterViewController`
protocol PhotosListPresenterViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `PhotosListPresenterPresenter` and referenced by `PhotosListPresenterInteractor`
protocol PhotosListPresenterInteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The Presenter for the PhotosListPresenter module
final class PhotosListPresenter {

	// MARK: - Constants

	let router: PhotosListPresenterRouterProtocol
	let interactor: PhotosListPresenterPresenterInteractorProtocol

	// MARK: Variables

	weak var view: PhotosListPresenterPresenterViewProtocol?

	// MARK: Inits

	init(router: PhotosListPresenterPresenterRouterProtocol, interactor: PhotosListPresenterPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}
}

// MARK: - PhotosListPresenter View to Presenter Protocol

extension PhotosListPresenterPresenter: PhotosListPresenterViewPresenterProtocol {

	func viewLoaded() {
		interactor.requestTitle()
	}
}

// MARK: PhotosListPresenter Interactor to Presenter Protocol

extension PhotosListPresenterPresenter: PhotosListPresenterInteractorPresenterProtocol {

	func set(title: String?) {
		view?.set(title: title)
	}
}
