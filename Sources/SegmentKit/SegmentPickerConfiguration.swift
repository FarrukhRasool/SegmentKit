//
//  SegmentPickerConfiguration.swift
//  SegmentKit
//
//  Created by Farrukh on 23/04/2025.
//
import Foundation
import SwiftUI

public struct SegmentPickerConfiguration {
    public let width: CGFloat
    public let height: CGFloat
    public let cornerRadius: CGFloat
    public let selectorInset: CGFloat
    public var selectionOffset: CGFloat

    public init(
        width: CGFloat = 300,
        height: CGFloat = 70,
        cornerRadius: CGFloat = 40,
        selectorInset: CGFloat = 6,
        selectionOffset: CGFloat = 0
    ) {
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.selectorInset = selectorInset
        self.selectionOffset = selectionOffset
    }
}
