import SwiftUI

struct PartieView: View {
    let number: Int
    @Binding var selectedPartie: Int

    var body: some View {
        VStack {
            Text("Partie \(number)")
                .padding(.horizontal)
                .padding(.vertical, 12)
                .foregroundStyle(selectedPartie == number ? .booktext : .bookprimary)
        }
        .background(selectedPartie == number ? Color.bookprimary : Color.bookprimary.opacity(0.1))
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 10)))
        .onTapGesture {
            selectedPartie = number
        }
        .padding(.leading, 8)
    }
}
