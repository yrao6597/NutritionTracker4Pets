import SwiftUI

struct ProfilePicView: View {
    var body: some View {
        Image("cat_profile")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40.0, height: 40.0)
            .clipShape(Circle())
            .shadow(radius: 8)
    }
}

struct ProfilePicView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicView().previewLayout(.sizeThatFits)
    }
}
