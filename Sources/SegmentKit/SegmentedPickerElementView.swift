//
//  SegmentedPickerElementView.swift
//  SegmentKit
//
//  Created by Farrukh on 23/04/2025.
//

import SwiftUI

struct SegmentedPickerElementView<Content>: Identifiable, View where Content : View {
    var id: Int
    let content: () -> Content
    
    @inlinable init(id: Int, @ViewBuilder content: @escaping () -> Content) {
        self.id = id
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            self.content()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.clear)
        }
    }
}

#Preview {
    SegmentedPickerElementView(id: .zero, content: { Text("Hello")})
}
