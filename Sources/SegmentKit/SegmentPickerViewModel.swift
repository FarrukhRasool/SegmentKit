//
//  SegmentPickerViewModel.swift
//  SegmentKit
//
//  Created by Farrukh on 23/04/2025.
//

import Foundation

public class SegmentPickerViewModel: ObservableObject {
    @Published var selectedIndex: Int
    public let choices: [SegmentItemValue]
    public var config: SegmentPickerConfiguration
    
    public init(selectedIndex: Int ,
         choices: [SegmentItemValue],
         config: SegmentPickerConfiguration = SegmentPickerConfiguration()
    ) {
        self.selectedIndex = selectedIndex
        self.choices = choices
        self.config = config
    }
    
}

