import SwiftUI

struct HomeImageView: View {

    var body: some View {
        Image("catpic")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 170.0, height: 170.0)
            .clipShape(Circle())
            .shadow(radius: 8)
            
    }
}

struct HomeImageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeImageView().previewLayout(.sizeThatFits)
    }
}
