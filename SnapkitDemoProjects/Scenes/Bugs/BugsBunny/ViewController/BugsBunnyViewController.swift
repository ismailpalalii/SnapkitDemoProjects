//
//  BugsViewController.swift
//  SnapkitDemoProjects
//
//  Created by İsmail Palalı on 8.05.2023.
//

import UIKit
import SnapKit

final class BugsBunnyViewController: UIViewController {

    // MARK: Created UI items
    private lazy var bugsImageView: UIImageView = {
           let theImageView = UIImageView()
           theImageView.image = UIImage(named: "bugsBunny")
           theImageView.translatesAutoresizingMaskIntoConstraints = false
           return theImageView
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }

    // MARK: Add Views
    private func setupUI() {
        view.addSubview(bugsImageView)
        view.backgroundColor = .white
    }

    // MARK: Add Constraints
    private func setupConstraints() {
        bugsImageView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-8)
            make.width.equalTo(398)
            make.height.equalTo(450)
        }
    }
}
