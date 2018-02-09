//
//  PhotosListModule.swift
//  Project: MyGalary
//
//  Module: PhotosList
//
//  By Cynthia Fu 17/1/18
//  CynthiaFu 2018
//

// MARK: Imports

import SwiftyVIPER
import UIKit

// MARK: -

/// Used to initialize the PhotosListModule VIPER module
final class PhotosListModule: ModuleProtocol {

	// MARK: - Constants

	let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)

	// MARK: Variables

	private(set) lazy var interactor: PhotosListModuleInteractor = {
		PhotosListModuleInteractor()
	}()

	private(set) lazy var router: PhotosListModuleRouter = {
		PhotosListModuleRouter()
	}()

	private(set) lazy var presenter: PhotosListModulePresenter = {
		PhotosListModulePresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: PhotosListModuleViewController = {
		var vc = self.storyboard.viewController(PhotosListModuleViewController.self)
		vc.presenter = self.presenter
		return vc
	}()

	// MARK: - Module Protocol Variables

	var viewController: UIViewController {
		return view
	}

	// MARK: Inits

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}
