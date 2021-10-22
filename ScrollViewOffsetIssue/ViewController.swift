//
//  ViewController.swift
//  ScrollViewOffsetIssue
//
//  Created by Rohan Sanap on 22/10/21.
//

import UIKit

class ViewController: UIViewController {
  let scrollView = UIScrollView()

  override func viewDidLoad() {
    super.viewDidLoad()

    setupScrollView()
    setupScrollViewContent()
    setupZeroInsetButton()
    setupHalfInsetButton()
  }

  @objc func setScrollViewContentInsetZero() {
    scrollView.contentInset = .zero
    scrollView.contentOffset = .zero
  }

  @objc func setScrollViewContentHalfWidth() {
    let halfWidth = scrollView.bounds.size.width / 2.0
    print("Half width - \(halfWidth)")
    scrollView.contentInset = UIEdgeInsets(top: 0, left: halfWidth, bottom: 0, right: halfWidth)
    scrollView.contentOffset = CGPoint(x: -halfWidth, y: 0)
  }
}

extension UIViewController: UIScrollViewDelegate {
  public func scrollViewDidScroll(_ scrollView: UIScrollView) {
    print("Offset X - \(scrollView.contentOffset.x)")
  }
}

