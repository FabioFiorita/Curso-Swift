//
//  StudyManager.swift
//  PlanoDeEstudos
//
//  Created by Fabio Fiorita on 23/01/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import Foundation
import UserNotifications

class StudyManager {
    static let shared = StudyManager()
    let ud = UserDefaults.standard
    var studyPlans: [StudyPlan] = []
    
    
    private init() {
        if let data = ud.data(forKey: "StudyPlan"), let plans = try?
            JSONDecoder().decode([StudyPlan].self, from: data) {
            self.studyPlans = plans
        }
    }
    
    func savePlans() {
        if let data = try? JSONEncoder().encode(studyPlans) {
            ud.set(data, forKey: "StudyPlans")
        }
    }
    
    func addPlan(_ studyPlan: StudyPlan) {
        studyPlans.append(studyPlan)
        savePlans()
    }
    
    func removePlan(at index: Int) {
        
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [studyPlans[index].id])
        
        studyPlans.remove(at: index)
        savePlans()
    }
    
    func setPlanDone(id: String) {
        if let studyPlan = studyPlans.first(where: {$0.id == id}) {
            studyPlan.done = true
            savePlans()
        }
    }
    
}
