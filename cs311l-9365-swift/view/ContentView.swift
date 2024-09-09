//
//  ContentView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab : Tab = .chart
    
    init() {

    
    }
    
    var body: some View {
        ZStack {
            TabView(selection : $selectedTab) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    
                    switch tab {
                        case .chart:
                            LetterGradeView().tag(tab)
                        case .graduationcap:
                            AbsentsView().tag(tab)
                        case .book:
                            CurrentGradeCalculatorView().tag(tab)
                        case .calendar:
                            ScheduleView().tag(tab)
                        case .listBullet:
                            TodoView().tag(tab)
                    }
                }
            }
        
            .padding(.bottom, 80);
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
