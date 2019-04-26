require("pry-byebug")
require_relative("../models/member.rb")
require_relative("../models/gymclass.rb")
require_relative("../models/attedence.rb")

member1 = Member.new({
  "name" => "Jon Snow",
  "post_code" => "EH1 2NG",
  "date_of_birth" => 26/12/1986,
  "email" => "kinginthenorth@housestark.co.uk",
  "mobile_number" => 0131 225 9846
  })

member2 = Member.new({
  "name" => "Gregor Clegane",
  "post_code" => "EH2 3DF",
  "date_of_birth" => 26/11/1988,
  "email" => "mountain@houselannister.co.uk",
  "mobile_number" => 0131 215 1234
  })

member3 = Member.new({
  "name" => "Daenerys Targaryn",
  "post_code" => "EH8 9DW",
  "date_of_birth" => 23/10/1986,
  "email" => "stormborn@housetargaryn.co.uk",
  "mobile_number" => 0131 527 1711
  })

member4 = Member.new({
  "name" => "Tormund Giantsbane",
  "post_code" => "EH3 8RA",
  "date_of_birth" => 07/12/1978,
  "email" => "thegiant@wildlings.co.uk",
  "mobile_number" => 0345 013 3196
  })

member4 = Member.new({
  "name" => "Sansa Stark",
  "post_code" => "EH3 6HZ",
  "date_of_birth" => 21/02/1996,
  "email" => "ladyofwinterfell@housestark.co.uk",
  "mobile_number" => 0131 558 1200
  })

gymclass1 = Gymclass.new({
  "name" => "Cycle",
  "duration" => "30 mins"
  "calories" => "Estimated to burn 300 kCal",
  "instructor" => "Katarzyna Piskorz"
  })

gymclass2 = Gymclass.new({
  "name" => "Burn it",
  "duration" => "30 mins"
  "calories" => "Estimated to burn 250 kCal",
  "instructor" => "Gareth Carr"
  })

gymclass3 = Gymclass.new({
  "name" => "Yoga",
  "duration" => "60 mins"
  "calories" => "Estimated to burn 350 kCal",
  "instructor" => "Michele Lindsay"
  })

gymclass4 = Gymclass.new({
  "name" => "Absolute Abs",
  "duration" => "15 mins"
  "calories" => "Estimated to burn 38 kCal",
  "instructor" => "Struan Nevin"
  })

gymclass5 = Gymclass.new({
  "name" => "Zumba",
  "duration" => "45 mins"
  "calories" => "Estimated to burn 262 kCal",
  "instructor" => "Jennifer Geary"
  })
