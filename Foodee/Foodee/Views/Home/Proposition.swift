

import SwiftUI

@available(iOS 15.0, *)
struct Proposition: View {
    
    @ObservedObject var viewModel = PropositionViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.businesses , id: \.id){
                    business in
                    Text(business.name ?? "no name")
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Ariana"))
            .searchable(text: $viewModel.searchText)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "person")
                }
            }
            .onAppear(perform: viewModel.search)
        }
    }
}

@available(iOS 15.0, *)
struct Proposition_Previews: PreviewProvider {
    static var previews: some View {
        Proposition()
    }
}
