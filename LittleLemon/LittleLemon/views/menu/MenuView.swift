import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Logo")
                    HStack() {
                        Spacer()
                        NavigationLink(destination: ProfileView()) {
                            Image("profile-image-placeholder")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24))
                        }

                    }
                }
            }
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
