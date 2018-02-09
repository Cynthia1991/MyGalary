//
//  PhotosListRouter.swift
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

/// Should be conformed to by the `PhotosListRouterRouter` and referenced by `PhotosListRouterPresenter`
protocol PhotosListRouterPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

/// The Router for the PhotosListRouter module
final class PhotosListRouterRouter {

	// MARK: - Variables

	weak var viewController: UIViewController?
}

// MARK: - Router Protocol

extension PhotosListRouterRouter: RouterProtocol {

}

// MARK: PhotosListRouter Presenter to Router Protocol

extension PhotosListRouterRouter: PhotosListRouterPresenterRouterProtocol {

}
