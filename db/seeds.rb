Pet.destroy_all
Need.destroy_all
Treatment.destroy_all

lon = User.create(email: "me@somewhere.com", password: "testpassword", password_confirmation: "testpassword")

puzzle = Pet.create(name: "Puzzle", breed: "English Springer Spaniel", pict_url: "puzzle.jpg", age: 10, weight: "50 lbs", sex: "male", notes: "Puzzle has been doing well lately with his appetite (a new dry food he likes), and his leg continues to improve. But he has accelerated his licking and scratching over the last week after doing pretty well for a couple of weeks. He just finished antibiotic for one infected hot spot. We are watching him carefully and spraying often where he licks (wherever his coat is wet). He remains on Ketoconazole and Cyclosporin as well as Zyrtec.", user_id: 1)

galaxy = Pet.create(name: "Galaxy", breed: "Siamese", pict_url: "galaxy.jpg", age: 2, weight: "10 lbs", sex: "female", user_id: 1)

tilda = Pet.create(name: "Tilda", breed: "Golden Retriever", pict_url: "tilda.jpg", age: 10, weight: "55 lbs", sex: "female", user_id: 1)

epilepsy = Need.create(kind: "Epilepsy", symptoms: "Seizures", notes: "If he shows pre-seizure signs, e.g., agitated rapid pacing or disorientation, it is OK to give him Keppra dose early. If he has a seizure, he should be given two keppra and taken to emergency room. He can also be given diazepam if needed.", pet_id: 1)
allergies = Need.create(kind: "Allergies", symptoms: "Itchy skin", pet_id: 2)
hypothyroidism = Need.create(kind: "Hypothyroidism", symptoms: "Sluggishness, excessive hunger", pet_id: 3)

zonisamide = Treatment.create(medicine: "Zonisamide", dosage: "2 tablets", every: "12 hours", need_id: 1)
keppra = Treatment.create(medicine: "Keppra", dosage: "2 tablets", every: "8 hours", notes: "The late evening Keppra dose is crucial, since the level in his blood goes down to almost zero in 8 hours, and he has shown he is most vulnerable to seizure activity near time for next dose. For that reason we are very careful to give the Keppra no later than 8 hours after the previous one.", need_id: 1)
gebapentin = Treatment.create(medicine: "Gebapentin", dosage: "1 tablets", every: "8 hours", need_id: 1)
phenobarbitol = Treatment.create(medicine: "Phenobarbitol", dosage: "1.5 tablets", every: "8 hours", need_id: 1)
meloxipam = Treatment.create(medicine: "Meloxipam", dosage: ".25 tablets", every: "12 hours", need_id: 1)

ketoconazole = Treatment.create(medicine: "ketoconazole", dosage: ".5 tablets", every: "12 hours", need_id: 2)
cyclosporin = Treatment.create(medicine: "Cyclosporin", dosage: ".5 ml", every: "12 hours", need_id: 2)

thryokare = Treatment.create(medicine: "Thryokare", dosage: "1 tablet", every: "12 hours", need_id: 3)
