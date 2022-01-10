import SwiftUI

struct HomeView: View {

    @State private var showPetManager: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            VStack {
                HStack {
                    ReusableButtonView(icon: "info")
                    Spacer()
                    Text("Home")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    ReusableButtonView(icon: "chevron.right").onTapGesture {
                        withAnimation(.spring()) {
                            showPetManager.toggle()
                        }
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView().navigationBarHidden(true)
        }
    }
}
