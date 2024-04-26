import SwiftUI

struct FriendView: View {
    var friend: Friend
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .padding(.leading, 8)
                
                Text(friend.name)
                    .font(.headline)
                    .lineLimit(1)
                Spacer()
            }
            .padding(.vertical, 8)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(friend.name), displayMode: .inline)
    }
}
