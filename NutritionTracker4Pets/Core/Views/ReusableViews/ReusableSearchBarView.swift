import SwiftUI

struct ReusableSearchBarView: View {
    // Binding: creates a two-way connection between a property that stores data, and a view that displays the data
    @Binding var searchString: String
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search by name ...", text: $searchString)
        }
        .padding(.vertical, 10.0)
        .background(RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 7))
        .padding()
    }
}

struct ReusableSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ReusableSearchBarView(searchString: .constant(""))

    }
}
