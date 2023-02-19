import SwiftUI

struct ButtonWithFilledColor: View {
    
    let label: String
    let backgroundColor: Color = CustomColor.darkGreen
    let textColor: Color = Color.white
    let cornerRadius: CGFloat = 8
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(textColor)
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 12))
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}

struct ButtonWithFilledColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithFilledColor(label: "Save changes", action: {})
    }
}
