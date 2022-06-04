import SwiftUI

struct TimeSlotPickerView: View {
    
    let formatCounts = [11, 4, 6]
   
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("CMX CineBistro Hyde Park ")
                        .custom(font: .medium, size: 24)
                    Text("1.2 mi")
                        .custom(font: .regular, size: 14)
                }
                .padding(.bottom,23)
                
                ForEach(Array(formatCounts.enumerated()), id: \.offset) { index in
                    FormatView(count: formatCounts[index.offset])
                    if index.offset != formatCounts.count-1 {
                        Rectangle()
                            .frame(height: 0.5)
                            .foregroundColor(.black)
                            .padding(.vertical, 14)
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 20)
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.baseSecondaryBackground))
    }
}

struct MovieTimeSlotView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSlotPickerView()
            .preferredColorScheme(.dark)
    }
}
