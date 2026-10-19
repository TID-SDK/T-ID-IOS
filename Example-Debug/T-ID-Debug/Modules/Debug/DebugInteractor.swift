//
//  DebugInteractor.swift
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

import Foundation
import UIKit

enum DebugViewResult: Int, CaseIterable {
    case success
    case failure
    case unavailable
    case cancelled
}

protocol DebugViewOutput {
    func handleDebugViewResult(_ result: DebugViewResult)
}

final class DebugInteractor: DebugViewOutput {

    private let callbackUrl: String

    init?(url: URL) {
        let components = URLComponents(
            url: url,
            resolvingAgainstBaseURL: true
        )

        let callbackUrl = components?
            .queryItems?
            .first(where: { item in item.name == .callbackUrlItemName })?
            .value

        guard let callbackUrl = callbackUrl else {
            return nil
        }

        self.callbackUrl = callbackUrl
    }

    func handleDebugViewResult(_ result: DebugViewResult) {
        var components = URLComponents(string: callbackUrl)
        components?.queryItems = [
            URLQueryItem(name: .resultItemName, value: result.resultItemValue)
        ]

        if let url = components?.url {
            UIApplication.shared.open(
                url,
                options: [:],
                completionHandler: nil
            )
        }
    }
}

private extension String {
    static let callbackUrlItemName = "callbackUrl"
    static let resultItemName = "result"
}

private extension DebugViewResult {
    var resultItemValue: String {
        switch self {
        case .success:
            return "success"
        case .failure:
            return "failure"
        case .cancelled:
            return "cancelled"
        case .unavailable:
            return "unavailable"
        }
    }
}
