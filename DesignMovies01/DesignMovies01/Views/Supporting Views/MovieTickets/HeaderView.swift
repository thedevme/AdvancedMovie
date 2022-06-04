import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image("dark_logan_image")
                .resizable()
                .scaledToFill()
                .frame(height: 300)
            
            Spacer()
        }
        
        .edgesIgnoringSafeArea(.top)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .preferredColorScheme(.dark)
    }
}
