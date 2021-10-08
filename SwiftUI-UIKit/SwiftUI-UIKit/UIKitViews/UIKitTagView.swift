//
//  UIKitTagView.swift
//  SwiftUI-UIKit
//
//  Created by Manish on 08/10/21.
//

import Foundation
import UIKit
import SwiftUI

class UIKitTagView: UIView {
    
    // MARK: - Views
    private let titleLable = UILabel()
    private let swiftUITagView = UIHostingController(rootView: SwiftUITagView(title: "SwiftUI Tag View"))
    
    // MARK: - Properties
    private let title: String
    private let bgColor: UIColor
    
    init(title: String, bgColor: UIColor = .blue) {
        self.title = title
        self.bgColor = bgColor
        
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupSwiftUITagView() {
        self.addSubview(self.swiftUITagView.view)
        self.swiftUITagView.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.swiftUITagView.view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.swiftUITagView.view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.swiftUITagView.view.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
        ])
    }
    
    fileprivate func setupTitleLabelView() {
        self.addSubview(self.titleLable)
        self.titleLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.titleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.titleLable.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.titleLable.topAnchor.constraint(equalTo: self.swiftUITagView.view.bottomAnchor, constant: 10),
            self.titleLable.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
        
        self.titleLable.layer.cornerRadius = 5
        self.titleLable.text = self.title
        self.titleLable.textColor = .gray
        
        self.backgroundColor = self.bgColor
    }
    
    func setupViews() {
        self.setupSwiftUITagView()
        self.setupTitleLabelView()
    }
    
}
