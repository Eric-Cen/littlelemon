import SwiftUI

struct MenuItemRowView: View {
    let menuItemName: String
    let menuItemDescription: String
    let menuItemImage: String
    
    var body: some View {
        HStack {
            VStack(alignment: HorizontalAlignment.leading) {
                Text(menuItemName)
                    .font(.system(size: 20))
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                Text(menuItemDescription)
                    .lineLimit(2)
                    .font(.system(size: 16))
                Text(menuItemImage)
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                    .font(.system(size: 20))
            }
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 0))
            Spacer()
            Image("Greek salad")
                .resizable()
                .frame(width: 82, height: 82)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 12))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 124)
    }
}

struct MenuItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRowView(
            menuItemName: "Greek Salad",
            menuItemDescription: "The famous greek salad of crispy lettuce, peppers, olivers and our Chicago",
            menuItemImage: "$12.99")
    }
}
