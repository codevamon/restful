# README

to add data
http://localhost:3000/api/v1/users/


manux = User.create( username: 'Manux', password: 'password' )

http://localhost:3000/api/v1/users/1/facts

fact_one = Fact.create( fact: 'Wiley Hardeman Post was the first pilot to fly solo around the world.', likes: 12, user_id: 1 )

fact_two = Fact.create( fact: 'The Symphony No1 in E flat major, K.16, was written by Wolfgang Amadeus Mozart at the age of 8.', likes: 2, user_id: 1 )
