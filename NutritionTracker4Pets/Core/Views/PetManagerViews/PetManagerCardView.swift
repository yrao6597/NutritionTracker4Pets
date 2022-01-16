// still experimentinng
import SwiftUI

struct PetManagerCardView: View {
    let petName: String
    var body: some View {
        VStack {
            Image("catpic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 150.0)
                .clipShape(Circle())
                .shadow(radius: 8)
            Spacer()
                .frame(height: 10.0)
            Text(petName).font(.title2).fontWeight(.semibold)
        }
        
    }
}

struct PetManagerCardView_Previews: PreviewProvider {
    static var previews: some View {
        PetManagerCardView(petName: "Hulu")
            .previewLayout(.sizeThatFits)
    }
}
