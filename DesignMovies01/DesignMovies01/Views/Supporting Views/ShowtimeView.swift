import SwiftUI

struct ShowtimeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                Text("SHOW")
                    .foregroundColor(Color.baseAccent)
                .custom(font: .futuraBold, size: 30)
                
                Text("TIMES")
                    .foregroundColor(Color.baseAccent)
                .custom(font: .demibold, size: 30)
            }
            
            VStack {
                ScrollView(.horizontal){
                    
                    HStack {
                        DateView()
                        DateView()
                        DateView()
                        DateView()
                        DateView()
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 20)
                }
            }.background(RoundedRectangle(cornerRadius: 10).fill(Color.baseSecondaryBackground))
        }
    }
}

struct ShowtimeView_Previews: PreviewProvider {
    static var previews: some View {
        ShowtimeView()
            .preferredColorScheme(.dark)
    }
}
