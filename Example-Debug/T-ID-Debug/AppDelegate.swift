//
//  AppDelegate.swift
//  T-ID-Debug
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

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        let rootViewController = app.keyWindow?.rootViewController

        guard rootViewController?.presentedViewController == nil else { return true }
        guard let interactor = DebugInteractor(url: url) else { return true }

        let controller = DebugViewController(output: interactor)
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.isModalInPresentation = true

        rootViewController?.present(navigationController, animated: true, completion: nil)

        return true
    }
}
