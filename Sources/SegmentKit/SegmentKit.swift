
import SwiftUI

struct SegmentKit: View {
    @ObservedObject var viewModel: SegmentPickerViewModel
    var onTapFunction: ((Int)->())
    
    init(viewModel: SegmentPickerViewModel, onTapFunction: @escaping (Int) -> Void) {
        self.viewModel = viewModel
        self.onTapFunction = onTapFunction
    }
    
    func calculateSelectionOffset() -> CGFloat {
        let widthOfElement = self.viewModel.config.width / CGFloat(self.viewModel.choices.count)
        return (widthOfElement * CGFloat(self.viewModel.selectedIndex)) + (widthOfElement / 2)
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
               
                RoundedRectangle(cornerRadius: viewModel.config.cornerRadius)
                    .foregroundColor(.white)
                    .frame(
                        width: viewModel.config.width / CGFloat(viewModel.choices.count),
                        height: viewModel.config.height
                    )
                    .position(
                        x: calculateSelectionOffset(),
                        y: viewModel.config.height / 2
                    )
                
               
                HStack(spacing: 0) {
                    ForEach(viewModel.choices) { item in
                        SegmentedPickerElementView(id: item.id) {
                            Text(item.label)
                                .foregroundColor(
                                    viewModel.selectedIndex == item.id ? .blue : .white
                                )
                        }
                        .frame(
                            width: viewModel.config.width / CGFloat(viewModel.choices.count),
                            height: viewModel.config.height
                        )
                        .onTapGesture {
                            withAnimation {
                                viewModel.selectedIndex = item.id
                                onTapFunction(item.id)
                            }
                        }
                    }
                }
            }
            .frame(
                width: viewModel.config.width,
                height: viewModel.config.height
            )
            .background(Color.gray)
            .cornerRadius(viewModel.config.cornerRadius)
            .padding(.vertical, -6)
        }
    }
}

#Preview {
    SegmentKit(viewModel: SegmentPickerViewModel(selectedIndex: .zero, choices: [
        SegmentItemValue(id: 0, label: "Active"),
        SegmentItemValue(id: 1, label: "Histroy"),
//        SegmentItemValue(id: 2, label: "Pending"),
    ])) { _ in }
}
