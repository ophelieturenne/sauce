# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "starting seeding"
puts "cleaning database"

Step.destroy_all
Aid.destroy_all
User.destroy_all
Emergency.destroy_all
Quizz.destroy_all
Question.destroy_all

puts "creating aids"

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666684586/sauce/man-uses-asthma-inhaler-against-allergic-attack-world-day-allergy-asthmatic-concept-inhalation-medicine-bronchial-vector-219909389_bkpkby.jpg")
aid = Aid.new(name: "Asthma", description: " description ")
aid.photo.attach(io: file, filename: "asthma", content_type: "image/png")
aid.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666763683/sauce/wound-care_2x-1200x852_1_mwnjir.png")
aid1 = Aid.new(name: "Bleeding", description: " description 1 ")
aid1.photo.attach(io: file, filename: "bleeding", content_type: "image/png")
aid1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087163/sauce/Burns_d5qnjw.png")
aid2 = Aid.new(name: "Burns", description: " description 2 ")
aid2.photo.attach(io: file, filename: "burns", content_type: "image/png")
aid2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666764486/sauce/imgbin-bone-fracture-arm-arm-1RLHH6x2AFE9zFEZFuRLyGHZ8_prev_ui_rzzdwm.png")
aid3 = Aid.new(name: "Fracture", description: " description 3 ")
aid3.photo.attach(io: file, filename: "fracture", content_type: "image/jpg")
aid3.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666763487/sauce/360_F_362503772_Fts3Wdb3tPDmuXS5m2QgjZAHPWPlvgV1_s2kkzn.png")
aid4 = Aid.new(name: "Electric Shock", description: " description 4 ")
aid4.photo.attach(io: file, filename: "electric_shock", content_type: "image/png")
aid4.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666761765/sauce/upset-woman-and-man-feeling-abdominal-pain-4587256-3845877_cjfhbb.webp")
aid5 = Aid.new(name: "Food Poisoning", description: " description 5 ")
aid5.photo.attach(io: file, filename: "food_poisoning", content_type: "image/webp")
aid5.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087216/sauce/Heart_Attack_gmnqx4.jpg")
aid6 = Aid.new(name: "Heart Attack", description: " description 6 ")
aid6.photo.attach(io: file, filename: "heart_attack.", content_type: "image/jpg")
aid6.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666761909/sauce/istockphoto-1334451714-612x612_oiu3hv.jpg")
aid7 = Aid.new(name: "Seizure", description: " description 7 ")
aid7.photo.attach(io: file, filename: "seizure", content_type: "image/jpg")
aid7.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666761511/sauce/woman-calling-mobile-help-to-young-unconscious-man-vector-illustration-white-background-97299893_ycl33f.jpg")
aid8 = Aid.new(name: "Unconscious", description: " description 8 ")
aid8.photo.attach(io: file, filename: "unconscious", content_type: "image/jpg")
aid8.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666760382/sauce/istockphoto-1163771797-612x612_szspto.jpg")
aid9 = Aid.new(name: "Drowning", description: " description 9 ")
aid9.photo.attach(io: file, filename: "drowning", content_type: "image/jpg")
aid9.save

puts "creating users"
user1 = User.new(email: "john@gmail.com", password: "123456")
user1.save

puts "creating steps"
# steps for aid (asthma)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163143/sauce/Asthma/Screenshot_122_rmp6lk.png")
step1 = Step.new(aid: aid, position: 1, description: "Sit the person upright.")
step1.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163994/sauce/Asthma/Screenshot_122_cezoas.png")
step2 = Step.new(aid: aid, position: 2, description: "Give 4 separate puffs of blue/grey reliever puffer
– Shake puffer
– Put 1 puff into spacer
– Take 4 breaths from spacer
Repeat until 4 puffs have been taken
Remember: shake, 1 puff, 4 breaths.")
step2.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163745/sauce/Asthma/Screenshot_122_sxd7ei.png")
step3 = Step.new(aid: aid, position: 3, description: "Wait 4 minutes
If there is no improvement, give 4 more
separate puffs of blue/grey reliever as above ")
step3.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step3.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163864/sauce/Asthma/Screenshot_122_maxw2h.png")
step4 = Step.new(aid: aid, position: 4, description: "If there is still no improvement dial
Triple Zero (000) for an ambulance
Keep giving 4 separate puffs every 4 minutes
until emergency assistance arrives. ")
step4.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step4.save

# steps for aid1 (bleeding)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666174764/sauce/Bleeding/step1-severe-bleeding-first-aid-advice_kwo4s6.png")
step1 = Step.new(aid: aid1, position: 1, description: "With open wounds, there’s a risk of infection, so wear protective first aid gloves (if available) to help prevent any infection passing between you both.")
step1.photo.attach(io: file, filename: "bleeding", content_type: "image/png")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666174770/sauce/Bleeding/step-2-severe-bleeding-first-aid-advice_aebs98.png")
step2 = Step.new(aid: aid1, position: 2, description: "Apply direct pressure to the wound using a sterile dressing if possible or a clean non-fluffy cloth, to stop the bleeding.

If you don't have a dressing you can ask the casualty to do this themselves.
If the wound is covered by the casualty's clothing, remove or cut the clothes to uncover the wound.
If there’s an object in the wound, don’t pull it out. It may be acting as a plug to reduce the bleeding. Instead apply pressure on either side of the object to push the edges together.")
step2.photo.attach(io: file, filename: "bleeding", content_type: "image/png")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666174778/sauce/Bleeding/call-for-help-female-first-aid_thkntw.png")
step3 = Step.new(aid: aid1, position: 3, description: "Ask a helper to call 999 or 112 for emergency help and give Ambulance Control details of where the wound is and the extent of the bleeding.

If you are on your own, use the hands-free speaker on a phone so that you can treat while speaking to ambulance control.")
step3.photo.attach(io: file, filename: "bleeding", content_type: "image/png")
step3.save

# steps for aid2 (burns)

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666172339/sauce/Burning/Burns-and-scalds-what-to-do-PIP-4_jnidsj.jpg")
step1 = Step.new(aid: aid2, position: 1, description: "Treat the burn under cool running water for 20 minutes. If your child is upset or too cold, cool the burn for a few minutes at a time over the next three hours.")
step1.photo.attach(io: file, filename: "burns", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666172364/sauce/Burning/Burns-and-scalds-PIP-5_rfv9yl.gif")
step2 = Step.new(aid: aid2, position: 2, description: "Cool the burn, not the child. Stop cooling the burn after 20 minutes. Keep your child warm because hypothermia can happen quickly in children.")
step2.photo.attach(io: file, filename: "burns", content_type: "image/gif")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666172371/sauce/Burning/Burns-and-scalds-PIP-6_qzjibi.gif")
step3 = Step.new(aid: aid2, position: 3, description: "Cover the burn with a loose, light, non-sticky dressing like plastic wrap or a plastic zip lock bag. Raise burned limbs to reduce swelling and pain.")
step3.photo.attach(io: file, filename: "burns", content_type: "image/gif")
step3.save

# steps for aid3 (fracture)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666179714/sauce/Fracture/fracture_zajppt.jpg")
step1 = Step.new(aid: aid3, position: 1, description: "Stay still and don't move the broken bones.")
step1.photo.attach(io: file, filename: "fracture", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666179718/sauce/Fracture/fracture-ice-pack_zbfo96.jpg")
step2 = Step.new(aid: aid3, position: 2, description: "Once the broken bone is immobilized, apply something cold (preferably ice) to it as soon as you can while you wait for the ambulance.Cold therapy has many benefits, including numbing the pain, reducing inflammation / swelling and reducing bleeding by causing the arteries to constrict.If you don't have ice handy, consider using frozen gel packs or bags of vegetables, but make sure to wrap anything cold in a thin cloth in order to avoid ice burn or frostbite.Apply ice for about 20 minutes or until the area is completely numb before removing it. Compressing it against the injury may help reduce swelling even more as long as it doesn't increase the pain.")
step2.photo.attach(io: file, filename: "fracture", content_type: "image/jpg")
step2.save

# steps for aid4 (electric shock)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666182571/sauce/Electric_shock/First-Aid-Treatment-For-Electric-Shock_xm62la.jpg")
step1 = Step.new(aid: aid4, position: 1, description: "Take an object like wood (not metal) to push away the electric wire to avoid electricity.")
step1.photo.attach(io: file, filename: "electric-shock", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666182824/sauce/Electric_shock/electric_shock_xulruk.jpg")
step2 = Step.new(aid: aid4, position: 2, description: "Check the person pulse and if neccessary push on the chest to make him breath.")
step2.photo.attach(io: file, filename: "electric_shock", content_type: "image/jpg")
step2.save

# steps for aid5 (food_poisoning)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666252546/sauce/Food_poisoning/water_lxpypq.jpg")
step1 = Step.new(aid: aid5, position: 1, description: "If you think you have food poisoning, lay down and rest.If you are vomiting, take small sips of water to drink as this will help prevent dehydration.")
step1.photo.attach(io: file, filename: "food_poisoning", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666252555/sauce/Food_poisoning/watch_hand_wckhaa.jpg")
step2 = Step.new(aid: aid5, position: 2, description: "Wash hand more so that to prevent the spread of the infection.")
step2.photo.attach(io: file, filename: "food_poisoning", content_type: "image/jpg")
step2.save




# steps for aid6 (heart attack)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666251637/sauce/Heart%20Attack/Heart_disease_uqn7kb.jpg")
step1 = Step.new(aid: aid6, position: 1, description: "The person that will lay down need some space to breath,so keep a distance and try to do a cardiac message.")
step1.photo.attach(io: file, filename: "heart_attack", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666251651/sauce/Heart%20Attack/call-for-help-female-first-aid_g3fqu3.png")
step2 = Step.new(aid: aid6, position: 2, description: "Call the emergency and wait for them to arrive.")
step2.photo.attach(io: file, filename: "heart_attack", content_type: "image/png")
step2.save

# steps for aid7 (Seizure)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666251802/sauce/seizure/lay-down_vpbrr8.jpg")
step1 = Step.new(aid: aid7, position: 1, description: "Make the person lay on a pillow to his side and remove any glasses.")
step1.photo.attach(io: file, filename: "Seizure", content_type: "image/jpg")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666251826/sauce/seizure/mouth_prohibited_sedtqf.png")
step2 = Step.new(aid: aid7, position: 2, description: "Do not put anything in mouth and take the time of the incident occured.")
step2.photo.attach(io: file, filename: "Seizure", content_type: "image/png")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666251838/sauce/seizure/call_r6jfi3.jpg")
step3 = Step.new(aid: aid7, position: 3, description: "call for help as soon as possible.")
step3.photo.attach(io: file, filename: "Seizure", content_type: "image/jpg")
step3.save

# steps for aid8 (Unconscious)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666252415/sauce/Unconscious/woman-providing-first-aid-procedure-to-a-lying-injured-man-vector-illustration-on-a-white-background-eps-vector_csp49505280_kcugyu.webp")
step1 = Step.new(aid: aid8, position: 1, description: "Position the person on the back. If there are no injuries and the person is breathing, raise the person's legs above heart level — about 12 inches (30 centimeters) — if possible. Loosen belts, collars or other constrictive clothing. To reduce the chance of fainting again, don't get the person up too quickly.")
step1.photo.attach(io: file, filename: "Unconscious", content_type: "image/webp")
step1.save

# steps for aid9 (drowning)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666180847/sauce/Drowning/drowning-object_kb2ynr.jpg")
step1 = Step.new(aid: aid9, position: 1, description: "Try to catch any objects to pull out the persons out of water.")
step1.photo.attach(io: file, filename: "drowning", content_type: "image/gif")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666181211/sauce/Drowning/drowningwater_oh53tq.jpg")
step2 = Step.new(aid: aid9, position: 2, description: "Make the person lay down and push on his chest to make the water out of his body so that he/she can breath.")
step2.photo.attach(io: file, filename: "drowning", content_type: "image/jpg")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666181882/sauce/Drowning/first-aid-to-drowned-person-man-doing-mouth-vector-32269290_qbguxn.jpg")
step3 = Step.new(aid: aid9, position: 3, description: "Make a mouth to mouth so that the person can be able to breath properly and avoid suffocating.")
step3.photo.attach(io: file, filename: "drowning", content_type: "image/jpg")
step3.save

puts "saving steps file "
step1.save
step2.save
step3.save
step4.save

# Emergency number
puts "creating emergency"

admin = User.create(email: "admin@test.com", password: "123456")
emergency1 = Emergency.create(name: "Police Direct Line", phone_number: "999", description: "call Samu", ispublic: true, user: admin)
emergency2 = Emergency.create(name: "Samu (Ambulance)", phone_number: "114", description: "call Samu", ispublic: true, user: admin)
emergency3 = Emergency.create(name: "Fire Services", phone_number: "115", description: "call Fire Station", ispublic: true, user: admin)
emergency4 = Emergency.create(name: "Police Information Room", phone_number: "2080034",description: "call Coast Guard", ispublic: true, user: admin)

puts "saving emergency file "
emergency1.save
emergency2.save
emergency3.save
emergency4.save

# quizz
puts "creating quizz "

quizz1 = Quizz.create(name: "Asthma")
quizz2 = Quizz.create(name: "Bleeding")
quizz3 = Quizz.create(name: "Burns")
quizz4 = Quizz.create(name: "Seizure")
quizz5 = Quizz.create(name: "Fracture")
quizz6 = Quizz.create(name: "Elec-Shock")
quizz7 = Quizz.create(name: "Poisoning")
quizz8 = Quizz.create(name: "Heart-Attack")
quizz9 = Quizz.create(name: "Unconscious")

puts "saving quizz file "
#quizz1.save
#quizz2.save
#quizz3.save
#quizz4.save
#quizz5.save


# question
puts "creating question "
# Asthma
question1 = Question.create(name: "What is the first step to take in case of an asthma attack?", option1:"Smoke a cigarette", option2:"Run 1km", option3:"Sit the person", answer:"Sit the person", quizz:quizz1)
question2 = Question.create(name: "What is the second step to take in case of an asthma attack?", option1:"Do cardio", option2:"Use reliever puffer", option3:"Wave hand", answer:"Use reliever puffer", quizz:quizz1)
question3 = Question.create(name: "What is the third step to take in case of an asthma attack?", option1:"Talk loudly", option2:"Wait few minutes", option3:"Smile to the person", answer:"Wait few minutes", quizz:quizz1)

# Bleeding
question4 = Question.create(name: "What is the first step to take in case of bleeding?", option1:"Wear protective gloves", option2:"Shake your hand", option3:"Jump for 2 minutes", answer:"Wear protective gloves", quizz:quizz2)
question5 = Question.create(name: "What is the second step to take in case of bleeding?", option1:"Spray perfume on wound", option2:"Put hand in hot water", option3:"Apply direct pressure", answer:"Apply direct pressure", quizz:quizz2)
question6 = Question.create(name: "What is the third step to take in case of bleeding?", option1:"Wait 1 week", option2:"Go to a night club", option3:"Call 999 or 112", answer:"Call 999 or 112", quizz:quizz2)

# Burns
question7 = Question.create(name: "What is the first step to take in case of burns?", option1:"Put hand in freezer", option2:"Treat the burn under water", option3:"Put hand in microwave", answer:"Treat the burn under water", quizz:quizz3)
question8 = Question.create(name: "What is the second step to take in case of burns?", option1:"Spray perfume on wound", option2:"Put hand in hot water", option3:"Cool the burn", answer:"Cool the burn", quizz:quizz3)
question9 = Question.create(name: "What is the third step to take in case of burns?", option1:"Cover the burn", option2:"Put salt on it", option3:"Put sugar", answer:"Cover the burn", quizz:quizz3)

# Seizure
question10 = Question.create(name: "What is the first step to take in case of seizure?", option1:"Run away", option2:"Lay on his side", option3:"Look at the person", answer:"Lay on his side", quizz:quizz4)
question11 = Question.create(name: "What is the second step to take in case of seizure?", option1:"Don't put anything on mouth", option2:"Drink water", option3:"Scream loudly", answer:"Don't put anything on mouth", quizz:quizz4)
question11 = Question.create(name: "What is the third step to take in case of seizure?", option1:"Wave hand", option2:"Throw water to person", option3:"Call for help immediately", answer:"Call for help immediately", quizz:quizz4)

# Fracture
question12 = Question.create(name: "What is the first step to take in case of fracture?", option1:"Stay still", option2:"Move the broken bones", option3:"Jump highly", answer:"Stay still", quizz:quizz5)
question13 = Question.create(name: "What is the second step to take in case of fracture?", option1:"Dance", option2:"Apply Cold", option3:"Scream loudly", answer:"Apply Cold", quizz:quizz5)

# Electric shock
question14 = Question.create(name: "What is the first step to take in case of electric-shock?", option1:"Run away", option2:"Ignore the person", option3:"Push away electric wire", answer:"Push away electric wire", quizz:quizz6)
question15 = Question.create(name: "What is the second step to take in case of electric-shock?", option1:"Dance", option2:"Check pulse", option3:"Scream loudly", answer:"Check pulse", quizz:quizz6)

# Food Poisoning
question16 = Question.create(name: "What is the first step to take in case of Food Poisoning?", option1:"Eat fast food", option2:"Drink water", option3:"Scream", answer:"Drink water", quizz:quizz7)
question17 = Question.create(name: "What is the second step to take in case of Food Poisoning?", option1:"Dance", option2:"Check pulse", option3:"Wash hand", answer:"Wash hand", quizz:quizz7)

# Heart-Attack
question18 = Question.create(name: "What is the first step to take in case of heart-attack?", option1:"Cardiac massage", option2:"Drink water", option3:"Scream", answer:"Cardiac massage", quizz:quizz8)
question19 = Question.create(name: "What is the second step to take in case of heart-attack?", option1:"Dance", option2:"Call for help", option3:"Pour water", answer:"Call for help", quizz:quizz8)

# Unconscious
question20 = Question.create(name: "What is the first step to take in case of unconscious?", option1:"Leg's raise above heart level", option2:"Run away", option3:"Scream", answer:"Leg's raise above heart level", quizz:quizz9)

puts "saving question file "
# question1.save
# question2.save
# question3.save
# question4.save
# question5.save
# question6.save
# question7.save
# question8.save
# question9.save
