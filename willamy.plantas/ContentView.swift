//
//  ContentView.swift
//  willamy.plantas
//
//  Created by iredefbmac_35 on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var darkMode = false
    @State private var selectedDate = Date()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Topo: Ícone + Título + DarkMode
                    HStack {
                        Label("Home", systemImage: "house.fill")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        Toggle(isOn: $darkMode) {
                            Text("DarkMode")
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .green))
                        .labelsHidden()
                    }
                    .padding(.horizontal)

                    // Caixa de dica geral
                    VStack(alignment: .leading, spacing: 12) {
                        Text("🌱 Dica geral:")
                            .font(.headline)

                        Text("""
Observe a planta regularmente. A maioria dos problemas pode ser evitada com atenção aos sinais: folhas murchas, amareladas ou manchas mostram que algo precisa mudar (água, luz ou solo). Mantenha o solo úmido — mas nunca encharcado — e garanta luz adequada ao tipo da planta.
""")
                            .font(.body)
                    }
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(12)
                    .padding(.horizontal)

                    // Título Calendário
                    HStack {
                        Label("Calendário de Plantio", systemImage: "calendar")
                            .font(.headline)
                            .padding(.horizontal)
                        Spacer()
                    }

                    // Calendário
                    DatePicker("Escolha uma data", selection: $selectedDate, displayedComponents: [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .navigationBarHidden(true)
        }
    }
}
