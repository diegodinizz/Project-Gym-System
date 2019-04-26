require("pry-byebug")
require_relative("../models/member.rb")
require_relative("../models/gymclass.rb")
require_relative("../models/attendence.rb")

# Member.delete_all()
# Gymclass.delete_all()
# Attedence.delete_all()

member1 = Member.new({
  "name" => "Jon Snow",
  "post_code" => "EH1 2NG",
  "date_of_birth" => "26/12/1986",
  "email" => "kinginthenorth@housestark.co.uk",
  "mobile_number" => "0131 225 9846"
  })

member1.save()

member2 = Member.new({
  "name" => "Gregor Clegane",
  "post_code" => "EH2 3DF",
  "date_of_birth" => "26/11/1988",
  "email" => "mountain@houselannister.co.uk",
  "mobile_number" => "0131 215 1234"
  })

member2.save()

member3 = Member.new({
  "name" => "Daenerys Targaryn",
  "post_code" => "EH8 9DW",
  "date_of_birth" => "23/10/1986",
  "email" => "stormborn@housetargaryn.co.uk",
  "mobile_number" => "0131 527 1711"
  })

member3.save()

member4 = Member.new({
  "name" => "Tormund Giantsbane",
  "post_code" => "EH3 8RA",
  "date_of_birth" => "07/12/1978",
  "email" => "thegiant@wildlings.co.uk",
  "mobile_number" => "0345 013 3196"
  })

member4.save()

member5 = Member.new({
  "name" => "Sansa Stark",
  "post_code" => "EH3 6HZ",
  "date_of_birth" => "21/02/1996",
  "email" => "ladyofwinterfell@housestark.co.uk",
  "mobile_number" => "0131 558 1200"
  })

member5.save()

gymclass1 = Gymclass.new({
  "name" => "Cycle",
  "duration" => "30 mins",
  "calories" => "Estimated to burn 300 kCal",
  "instructor" => "Katarzyna Piskorz"
  })

gymclass1.save()

gymclass2 = Gymclass.new({
  "name" => "Burn it",
  "duration" => "30 mins",
  "calories" => "Estimated to burn 250 kCal",
  "instructor" => "Gareth Carr"
  })

gymclass2.save()

gymclass3 = Gymclass.new({
  "name" => "Yoga",
  "duration" => "60 mins",
  "calories" => "Estimated to burn 350 kCal",
  "instructor" => "Michele Lindsay"
  })

gymclass3.save()

gymclass4 = Gymclass.new({
  "name" => "Absolute Abs",
  "duration" => "15 mins",
  "calories" => "Estimated to burn 38 kCal",
  "instructor" => "Struan Nevin"
  })

gymclass4.save()

gymclass5 = Gymclass.new({
  "name" => "Zumba",
  "duration" => "45 mins",
  "calories" => "Estimated to burn 262 kCal",
  "instructor" => "Jennifer Geary"
  })

gymclass5.save()

attedence1 = Attendence.new({
  "member_id" => member1.id,
  "gymclass_id" => gymclass4.id
  })

attedence1.save()

attedence2 = Attendence.new({
  "member_id" => member2.id,
  "gymclass_id" => gymclass2.id
  })

attedence2.save()

attedence3 = Attendence.new({
  "member_id" => member3.id,
  "gymclass_id" => gymclass3.id
  })

attedence3.save()

attedence4 = Attendence.new({
  "member_id" => member4.id,
  "gymclass_id" => gymclass5.id
  })

attedence4.save()

attedence5 = Attendence.new({
  "member_id" => member5.id,
  "gymclass_id" => gymclass1.id
  })

attedence5.save()

binding.pry
nil
