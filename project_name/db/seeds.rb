# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


user1 = User.create({ username: 'hey'})
user2 = User.create({username: 'winston'})
user3 = User.create({username: 'cool'})

art1 = Artwork.create(title: 'traintrack', image_url: 'https://www.flickr.com/photos/unoqualunque/51276700429/', artist_id: user1.id)

art2 = Artwork.create(title: 'boats', image_url: 'https://www.flickr.com/photos/lamerin/51288471259/', artist_id: user2.id)

art3 = Artwork.create(title: 'dew', image_url: 'https://www.flickr.com/photos/141278164@N06/51325827164/', artist_id: user1.id)

art4 = Artwork.create(title: 'jar', image_url: 'https://www.flickr.com/photos/163068179@N03/51322414020/', artist_id: user3.id)

ArtworkShare.create(viewer_id: user1.id, artwork_id: art1.id)

ArtworkShare.create(viewer_id: user2.id, artwork_id: art2.id)

ArtworkShare.create(viewer_id: user1.id, artwork_id: art3.id)

ArtworkShare.create(viewer_id: user3.id, artwork_id: art4.id)