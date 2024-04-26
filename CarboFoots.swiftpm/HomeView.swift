import SwiftUI

struct HomeView: View {
    
    @State private var favoriteColor = "Friends"
    var colors = ["World", "Friends"]

    @State private var friends = [
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
    ]
    
    @State private var world = [
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
        Friend(id: 1, name: "Name One", cFootprint: 10.0),
        Friend(id: 2, name: "Name Two", cFootprint: 10.0),
        Friend(id: 3, name: "Name Three", cFootprint: 10.0),
        Friend(id: 4, name: "Name Four", cFootprint: 10.0),
        Friend(id: 5, name: "Name Five", cFootprint: 10.0),
        Friend(id: 6, name: "Name Six", cFootprint: 10.0),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("What is your favorite color?", selection: $favoriteColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                List {
                                   if favoriteColor == "Friends" {
                                       ForEach(friends, id: \.id) { friend in
                                           NavigationLink(destination: FriendView(friend: friend)) {
                                               HStack {
                                                   Image(systemName: "person.circle")
                                                   Text(friend.name)
                                                       .foregroundColor(.black)
                                               }
                                           }
                                       }
                                   } else if favoriteColor == "World" {
                                       ForEach(world, id: \.id) { friend in
                                           NavigationLink(destination: FriendView(friend: friend)) {
                                               HStack {
                                                   Image(systemName: "person.circle")
                                                   Text(friend.name)
                                                       .foregroundColor(.black)
                                               }
                                           }
                                       }
                                   }
                               }
            }
            .navigationBarTitle(favoriteColor)
        }
    }
}
