import SwiftUI

struct ButtonWithFilledColor: View {
    
    let label: String
    let backgroundColor: Color = CustomColor.darkGreen
    let textColor: Color = Color.white
    let cornerRadius: CGFloat = 12
    let action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title)
                .foregroundColor(textColor)
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}

struct ButtonWithFilledColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithFilledColor(label: "Save changes")
    }
}
