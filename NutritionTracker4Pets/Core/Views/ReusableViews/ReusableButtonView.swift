import SwiftUI

struct ReusableButtonView: View {
    // button with custom icon, reusable
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 50.0, height: 50.0)
    }
}

struct ReusableButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ReusableButtonView(icon: "plus").previewLayout(.sizeThatFits)
    }
}
