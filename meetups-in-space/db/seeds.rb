user_attributes = [
	  {provider: "github", uid: "4", username: "jarlax4", email: "jarlax4@launchacademy.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"},
	  {provider: "github", uid: "2", username: "jarlax2", email: "jarlax2@launchacademy.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"},
	  {provider: "github", uid: "3", username: "jarlax3", email: "jarlax3@launchacademy.com", avatar_url: "https://avatars2.githubusercontent.com/u/174825?v=3&s=400"}
	]

user_attributes.each do |attributes|
  User.create(attributes)
end

meetup_attributes = [
  {name: "Best Meetup", description: "Clearly the best meetup", location: "Cool street, Awesomeville", creator: 2},
  {name: "Another Meetup", description: "Clearly just another meetup", location: "Other street, Thattown", creator: 1}
]

meetup_attributes.each do |attributes|
  Meetup.create(attributes)
end

attendee_attributes = [
  {user_id: 1, meetup_id: 2},
  {user_id: 2, meetup_id: 1},
  {user_id: 3, meetup_id: 1},
  {user_id: 2, meetup_id: 2}
]

attendee_attributes.each do |attributes|
  Attendee.create(attributes)
end
