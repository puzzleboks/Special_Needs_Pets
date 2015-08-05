Pet.destroy_all
Need.destroy_all
Treatment.destroy_all


puzzle = Pet.create(name: "Puzzle", breed: "English Springer Spaniel", pict_url: "puzzle.jpg", age: 10, weight: "50 lbs", sex: male)

galaxy = Pet.create(name: "Galaxy", breed: "Siamese", pict_url: "galaxy.jpg", age: 2, weight: "10 lbs", sex: "female")

tilda = Pet.create(name: "Tilda", breed: "Golden Retriever", pict_url: "tilda.jpg", age: 10, weight: "55 lbs", sex: "female")

epilepsy = Need.create(kind: "Epilepsy", symptoms: "Seizures")

zonisamide = Treatment.create(medicine: "Zonisamide", dosage: "2 tablets", every: "12 hours")

keppra = Treatment.create(medicine: "Keppra", dosage: "2 tablets", every: "8 hours")

gebapentin = Treatment.create(medicine: "Gebapentin", dosage: "1 tablets", every: "8 hours")

phenobarbitol = Treatment.create(medicine: "Phenobarbitol", dosage: "1.5 tablets", every: "8 hours")
