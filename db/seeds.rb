Pet.destroy_all
Need.destroy_all
Treatment.destroy_all

lon = User.create(email: "me@somewhere.com", password: "testpassword", password_confirmation: "testpassword")

puzzle = Pet.create(name: "Puzzle", breed: "English Springer Spaniel", pict_url: "puzzle.jpg", age: 10, weight: "50 lbs", sex: "male", user_id: 1)

galaxy = Pet.create(name: "Galaxy", breed: "Siamese", pict_url: "galaxy.jpg", age: 2, weight: "10 lbs", sex: "female", user_id: 1)

tilda = Pet.create(name: "Tilda", breed: "Golden Retriever", pict_url: "tilda.jpg", age: 10, weight: "55 lbs", sex: "female", user_id: 1)

epilepsy = Need.create(kind: "Epilepsy", symptoms: "Seizures", pet_id: 1)

zonisamide = Treatment.create(medicine: "Zonisamide", dosage: "2 tablets", every: "12 hours", need_id: 1)

keppra = Treatment.create(medicine: "Keppra", dosage: "2 tablets", every: "8 hours", need_id: 1)

gebapentin = Treatment.create(medicine: "Gebapentin", dosage: "1 tablets", every: "8 hours", need_id: 1)

phenobarbitol = Treatment.create(medicine: "Phenobarbitol", dosage: "1.5 tablets", every: "8 hours", need_id: 1)
