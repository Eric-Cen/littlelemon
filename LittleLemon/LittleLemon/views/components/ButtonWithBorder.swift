import SwiftUI

struct ButtonWithBorder: View {
    let label: String
    let backgroundColor: Color = Color.white
    let textColor: Color = CustomColor.darkGreen
    let borderStrokeColor: Color = CustomColor.darkGreen
    let cornerRadius: CGFloat = 12
    let borderStrokeWidth: CGFloat = 2
    let action: () -> Void = {}
    
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title)
                .foregroundColor(textColor)
                .padding()
                .background(backgroundColor)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius).stroke(borderStrokeColor, lineWidth: borderStrokeWidth))
        }
    }
}

struct ButtonWithBorder_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithBorder(label: "Discard changes")
    }
}
