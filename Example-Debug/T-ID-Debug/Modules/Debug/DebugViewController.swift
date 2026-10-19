//
//  DebugViewController.swift
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

final class DebugViewController: UITableViewController {

    private let output: DebugViewOutput

    init(output: DebugViewOutput) {
        self.output = output
        super.init(style: .insetGrouped)

        title = "T-ID-Debug"
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: .cellIdentifier)
    }
}

// MARK: - UITableViewDataSource

extension DebugViewController {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Выберите действие"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DebugViewResult.allCases.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: .cellIdentifier,
            for: indexPath
        )

        switch DebugViewResult(rawValue: indexPath.row) {
        case .success:
            cell.textLabel?.text = "Вернуться и успешно завершить вход"
        case .failure:
            cell.textLabel?.text = "Вернуться и не завершить вход"
        case .cancelled:
            cell.textLabel?.text = "Отменить вход"
        case .unavailable:
            cell.textLabel?.text = "Симуляция недоступности входа"
        default:
            break
        }

        return cell
    }
}

// MARK: - UITableViewDelegate

extension DebugViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        defer {
            navigationController?.dismiss(animated: true, completion: nil)
        }

        guard let result = DebugViewResult(rawValue: indexPath.row) else { return }

        output.handleDebugViewResult(result)
    }
}

// MARK: - Private

private extension String {
    static let cellIdentifier = "Cell"
}
