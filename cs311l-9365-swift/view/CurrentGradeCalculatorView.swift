//
//  CurrentGradeCalculator.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

// CurrentGradeCalculatorView.swift
import SwiftUI

struct CurrentGradeCalculatorView: View {
    //@StateObject private var controller = GradeCalculatorController()
    
    var body: some View {
        VStack {
            Text("Calculate your current semester grade here!")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Course")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Units")
                    .fontWeight(.bold)
                    .frame(width: 100, alignment: .leading)
                
                Text("Grade")
                    .fontWeight(.bold)
                    .frame(width: 100, alignment: .leading)
            }
            .padding(.horizontal)
            
            ForEach(0..<10, id: \.self) { index in
                HStack {
                    TextField("Course", text: $controller.gradeModels[index].course)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Units", value: $controller.gradeModels[index].units, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 100)
                    
                    TextField("Grade", value: $controller.gradeModels[index].grade, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 100)
                }
                .padding(.horizontal)
            }
         
          
            
            HStack {
                
            Spacer()
            
                Text("GWA:")
                    .fontWeight(.bold)
                
                Text(String(format: "%.2f", controller.gwa))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100)
                
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    CurrentGradeCalculatorView()
}
