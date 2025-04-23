//
//  PWFilterValue.swift
//  SegmentKit
//
//  Created by Farrukh on 23/04/2025.
//

public struct SegmentItemValue: Identifiable, Hashable {
    public  var id: Int
    public var label: String
    public init(id: Int, label: String) {
        self.id = id
        self.label = label
    }
}
