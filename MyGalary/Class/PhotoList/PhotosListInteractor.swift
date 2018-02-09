//
//  PhotosListInteractor.swift
//  Project: MyGalary
//
//  Module: PhotosList
//
//  By Cynthia Fu 17/1/18
//  CynthiaFu 2018
//

// MARK: Imports

import Foundation
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `PhotosListInteractorInteractor` and referenced by `PhotosListInteractorPresenter`
protocol PhotosListInteractorPresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}

// MARK: -

/// The Interactor for the PhotosListInteractor module
final class PhotosListInteractorInteractor: PhotosListInteractorPresenterInteractorProtocol {

	// MARK: - Variables

	weak var presenter: PhotosListInteractorInteractorPresenterProtocol?

	// MARK: - PhotosListInteractor Presenter to Interactor Protocol

	func requestTitle() {
		presenter?.set(title: "PhotosListInteractor")
	}
}
