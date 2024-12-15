//
//  TrainingViewModel.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI
import CoreData
import Combine

final class TrainingViewModel: ObservableObject {

    @Published var Types: [String] = ["Cardio", "Strenght", "Warm-up", "Martial Art"]
    @Published var curType: String = ""
    @Published var typeForFilter: String = "All"
    
    @Published var quantity: Int = 0
    @Published var Approaches: Int = 0

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false

    @Published var trType: String = ""
    @Published var trTime: String = ""
    @Published var trComp: String = ""
    @Published var trBP: String = ""
    @Published var trQuan: String = ""
    @Published var trApp: String = ""

    @Published var trainings: [TrainModel] = []
    @Published var selectedTraining: TrainModel?

    func addTraining() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "TrainModel", into: context) as! TrainModel

        loan.trType = trType
        loan.trTime = trTime
        loan.trComp = trComp
        loan.trBP = trBP
        loan.trQuan = trQuan
        loan.trApp = trApp

        CoreDataStack.shared.saveContext()
    }

    func fetchTrainings() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<TrainModel>(entityName: "TrainModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.trainings = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.trainings = []
        }
    }
    
    @Published var remainingTime: Int
    @Published var isRunning = false
    private var timer: AnyCancellable?
    let initialTime: Int = 15 * 60

    init() {
        self.remainingTime = initialTime
    }

    func start() {
        guard !isRunning else { return }
        isRunning = true
        timer = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.tick()
            }
    }

    func stop() {
        isRunning = false
        timer?.cancel()
    }

    func finish() {
        stop()
        remainingTime = 0
    }

    func reset() {
        stop()
        remainingTime = initialTime
    }

    private func tick() {
        if remainingTime > 0 {
            remainingTime -= 1
        } else {
            finish()
        }
    }
}
