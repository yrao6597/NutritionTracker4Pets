import SwiftUI

struct DeleteButtonView: View {
    var body: some View {
        Text("Delete")
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .font(.title2)
            .frame(height: 50)
            .frame(maxWidth: 150)
            .background(Color.red)
            .cornerRadius(15.0)
            .padding(15)
    }
}

struct DeleteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButtonView().previewLayout(.sizeThatFits)
    }
}
