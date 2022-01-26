import SwiftUI

// further implementation: customizable color
struct SaveButtonView: View {
    var body: some View {
        Text("Save")
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .font(.title2)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(15.0)
            .padding(15)
    }
}

struct SaveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SaveButtonView().previewLayout(.sizeThatFits)
    }
}
