//
//  AppDelegate.swift
//  T-ID-Example
//
//  Copyright (c) 2024 TBank
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import TID
import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window = UIWindow(frame: UIScreen.main.bounds) as UIWindow?

    lazy var tid: ITID = {
        let clientId = ""
        let callbackUrl = ""

        assert(!clientId.isEmpty, "Please specify an client ID")

        let factory = TIDFactory(
            clientId: clientId,
            callbackUrl: callbackUrl,
            webSessionSourceProvider: self
        )

        return factory.build()
    }()

    lazy var authController: AuthViewController = .init(
        signInInitializer: tid,
        credentialsRefresher: tid,
        signOutInitializer: tid
    )

    func applicationDidFinishLaunching(_ application: UIApplication) {
        authController.tabBarItem = UITabBarItem(title: "Auth", image: nil, tag: 0)

        let tButtonsController = TButtonsViewController()
        tButtonsController.tabBarItem = UITabBarItem(title: "UI", image: nil, tag: 1)

        let tabBarController = UITabBarController()
        authController.tabBarItem.image = UIImage(systemName: "person")
        tButtonsController.tabBarItem.image = UIImage(systemName: "pencil")
        tabBarController.viewControllers = [authController, tButtonsController]

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        return tid.handleCallbackUrl(url)
    }
}

// MARK: - AuthWebView Usage

extension AppDelegate: IAuthWebSessionSourceProvider {
    func getSourceViewController() -> UIViewController {
        authController
    }
}
