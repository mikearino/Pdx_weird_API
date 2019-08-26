# things_list = [
#   ["Zoobomb", "Drink PBR at the Zoo and then bomb the hill on minibike. Try not to crash.", 5, "#zoobomb"],
#   ["Witches Castle", "Weird stone house in the woods. Great for spell casting, larping and PBR.", 3, "#Witches Castle"],
#   ["Lovecraft Bar", "H.P. Lovecraft themed bar post punk madness", 5, "#Lovecraft"],
#   ["Shanghai Tunnels", "Old tunnels under Portland made by a giant rat.", 4, "#Tunnels"],
#   ["Chocolate Waterfall", "21 foot waterfall. Gross.", 2, "#Waterfall"],
#   ["Worlds Smallest Park", "Tiny park in the middle of a busy street.", 2, "#Park"],
#   ["Plastic Horse", "Tie a Plastic Horse to the Curb.", 2, "#Horse"],
#   ["Darcelle's", "Go to a drag show.", 2, "#dragshow"],
#   ["Casa Diablo", "Go to a vegan strip club.", 2, "#stripclub"],
#   ["Voodo Doughnuts", "Get some weird doughnuts.", 1, "#doughnuts"],
#   ["Airport Carpet", "Take a picture of your feet at the airport.", 1, "#airport"]
# ]
# things_list.each do |n, c, r, t|
#   Thing.create(name: n, content: c, rating: r, tag: t)
# end


locations_list = [
  [45.523105, -122.684060, Thing.all.sample.id],
  [45.528543, -122.725066, Thing.all.sample.id],
  [45.520089, -122.660916, Thing.all.sample.id],
  [45.524367, -122.673238, Thing.all.sample.id],
  [45.536809, -122.476691, Thing.all.sample.id],
  [45.516223, -122.673205, Thing.all.sample.id],
  [45.525039, -122.679066, Thing.all.sample.id],
  [45.524905, -122.672964, Thing.all.sample.id],
  [45.544149, -122.720691, Thing.all.sample.id],
  [45.522827, -122.672879, Thing.all.sample.id],
  [45.589807, -122.595062, Thing.all.sample.id]
]
locations_list.each do |la, lo, tid|
  Location.create(lat: la, long: lo, thing_id: tid)
end


users_list = [
  "Jim",
  "Chad",
  "Brad",
  "BeetleJuice",
  "Elvira",
  "Jimbo",
  "Chester",
  "Bruce",
  "Oscar",
  "SomeDude",
  "Mavis"
]
users_list.each do |n|
  User.create(name: n)
end

comments_list = [
  ["Zoobomb is a weekly bicycling activity in Portland, Oregon, United States during which participants ride bicycles rapidly downhill in the city's West Hills. Zoobomb began in 2002. Participants carry their bikes on MAX Light Rail to the Washington Park station next to the Oregon Zoo.", Thing.all.sample.id, User.all.sample.id],
  ["asdf", "In the mid-1800s, well before the structure was built, a man named Danford Balch bought a large portion of land around the area while Portland was still in the process of being developed. It was a big enough area that he had to hire help to clear the area, so he hired a man named Mortimer Stump, who lived in the cabin on the property with Balch’s family of 10. Over time, Stump and Balch’s daughter Anna fell in love, and eventually Stump asked Balch for his Anna’s hand in marriage. Balch refused, resulting in Stump and Anna threatening to elope. Balch became infuriated and told Stump that he would murder him if they did. The young couple didn’t heed the warning, and decided to elope in November of 1858.", Thing.all.sample.id, User.all.sample.id],
  ["The Lovecraft is a horror-themed bar with local art and decor, a small dance floor, and different themed nights ranging from 80s, industrial and goth, metal, bellydance, burlesque and performance art, live music, art classes and movie nights.", Thing.all.sample.id, User.all.sample.id],
  ["The Old Portland Underground, better known locally as the Shanghai Tunnels, is a group of passages in Portland, Oregon, United States, mainly underneath the Old Town Chinatown neighborhood and connecting to the main business section. The tunnels connected the basements of many hotels and taverns to the waterfront of the Willamette River. They were originally built to move goods from the ships docked on the Willamette to the basement storage areas, allowing businesses to avoid streetcar and train traffic on the streets when delivering their goods.", Thing.all.sample.id, User.all.sample.id],
  ["Located directly inside the front door of the Candy Basket shop in Portland, Oregon this chocolate waterfall has been around since 1991. The twenty-one-foot towering cascade is crafted from Italian marble and sculpted bronze, and spews an astounding 2700 pounds of chocolate from top to bottom.", Thing.all.sample.id, User.all.sample.id],
  ["Many residents in Portland have driven past Mill Ends Park dozens, nay hundreds of times, and never even noticed it was there. Deemed the world's smallest city park in 1971 by the Guinness Book of World Records, the park is merely two feet wide, and lies in the median of the heavily trafficked Naito Parkway.", Thing.all.sample.id, User.all.sample.id],
  ["This tiny element of Portland’s rich history was going overlooked, and one man decided to draw attention to it with a fun project that has led to many tiny horses tethered to sidewalks all around town. In 2005, Scott Wayne Indiana tethered a miniature toy horse to one of the city sidewalks’ many horse rings, and the project that followed has given a whimsical touch of fun to Portland’s many historical neighborhoods.", Thing.all.sample.id, User.all.sample.id],
  ["The oldest female impersonator club in the nation. With the Guinness book of world records holder for the oldest working female impersonator Darcelle XV.", Thing.all.sample.id, User.all.sample.id],
  ["This Is the World's Only Vegan Strip Club. Casa Diablo puts its meat on the pole, not the plate. Casa Diablo sits on the outskirts of Northwest Portland's lush Forest Park. The sign outside reads “NUDE DANCERS,” so you know what you're getting into before stepping foot inside the dimly lit bar.", Thing.all.sample.id, User.all.sample.id],
  ["Voodoo Doughnut is an independent doughnut shop based in Portland, Oregon, known for its eclectic decor, and pink boxes featuring the company logo and illustrations of voodoo priests. The company maintains two shops and a cart in Portland, and shops in Eugene, Denver, Austin, Universal City, and Orlando.", Thing.all.sample.id, User.all.sample.id],
  ["The carpet at Portland International Airport in Portland, Oregon, featured geometric shapes on a teal background, representing the intersection of the north and south runways seen by air traffic controllers from the airport's tower at night.", Thing.all.sample.id, User.all.sample.id]
]

comments_list.each do |c, tid, uid|
   Comment.create(content: c, thing_id: tid, user_id: uid)
end






















#
# def self.begin
#   seed = Seed.new
#   seed.generate_thing
# end
#
# def generate_things
#   10.times do |i|
#     thing = Thing.create!(
#       name: Faker::Address.community,
#       place: Faker::Address.state,
#       content: Faker::Hipster.sentence
#     )
#     rand(1..10).times do |i|
#       reviews = thing.reviews.create!(
#         author: Faker::Name.name,
#         content_body: Faker::Hipster.sentence,
#         rating: Faker::Number.within(range: 1..10)
#       )
#     end
#     puts "Thing #{i}: name is #{thing.name} and content is '#{thing.content}'"
