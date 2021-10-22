//
//  ViewController+UISetup.swift
//  ScrollViewOffsetIssue
//
//  Created by Rohan Sanap on 22/10/21.
//

import UIKit

extension ViewController {
  func setupScrollView() {
    view.addSubview(scrollView)
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      scrollView.heightAnchor.constraint(equalToConstant: 100),
    ])
    scrollView.backgroundColor = UIColor.systemRed
    scrollView.delegate = self
  }

  func setupScrollViewContent() {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 100))
    view.backgroundColor = UIColor.systemBlue
    scrollView.addSubview(view)
    scrollView.contentSize = view.bounds.size
  }

  func setupZeroInsetButton() {
    let button = UIButton(type: .system)
    view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
      button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
    ])

    button.setTitle("Set zero inset", for: .normal)
    button.addTarget(self, action: #selector(setScrollViewContentInsetZero), for: .touchUpInside)
  }

  func setupHalfInsetButton() {
    let button = UIButton(type: .system)
    view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
      button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
    ])

    button.setTitle("Set half inset", for: .normal)
    button.addTarget(self, action: #selector(setScrollViewContentHalfWidth), for: .touchUpInside)
  }
}
