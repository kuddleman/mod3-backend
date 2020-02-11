# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create!(username: 'u', password: 'password', email: 'ab@gmail.com', first_name: 'Tom', last_name: 'Steyer')
u2 = User.create!(username: 'u',password: 'password', email: 'bc@gmail.com', first_name: 'Amy', last_name: 'Klobochar')
u3 = User.create!(username: 'u', password: 'password', email: 'de@gmail.com', first_name: 'Bernie', last_name: 'Sanders')
u4 = User.create!(username: 'u', password: 'password', email: 'ef@gmail.com', first_name: 'Nancy', last_name: 'Pelosi')
u5 = User.create!(username: 'u', password: 'password', email: 'gh@gmail.com', first_name: 'Barbara', last_name: 'Boxer')

Song.destroy_all
s1 = Song.create!(name: 'songName1', artist: 'artist1', album: 'album1', genre: 'genre1')
s2 = Song.create!(name: 'songName2', artist: 'artist2', album: 'album2', genre: 'genre2')
s3 = Song.create!(name: 'songName3', artist: 'artist3', album: 'album3', genre: 'genre3')
s4 = Song.create!(name: 'songName4', artist: 'artist4', album: 'album4', genre: 'genre4')
s5 = Song.create!(name: 'songName5', artist: 'artist5', album: 'album5', genre: 'genre5')
s6 = Song.create!(name: 'songName6', artist: 'artist6', album: 'album6', genre: 'genre6')
s7 = Song.create!(name: 'songName7', artist: 'artist7', album: 'album7', genre: 'genre1')
s8 = Song.create!(name: 'songName8', artist: 'artist8', album: 'album9', genre: 'genre4')
s9 = Song.create!(name: 'songName9', artist: 'artist2', album: 'album3', genre: 'genre5')
s10 = Song.create!(name: 'songName10', artist: 'artist6', album: 'album6', genre: 'genre3')
s11 = Song.create!(name: 'songName11', artist: 'artist6', album: 'album3', genre: 'genre1')
s12 = Song.create!(name: 'songName12', artist: 'artist7', album: 'album4', genre: 'genre6')
s13 = Song.create!(name: 'songName13', artist: 'artist1', album: 'album1', genre: 'genre1')
s15 = Song.create!(name: 'songName14', artist: 'artist9', album: 'album9', genre: 'genre9')
s16 = Song.create!(name: 'songName15', artist: 'artist7', album: 'album4', genre: 'genre1')

Playlist.destroy_all
p1 = Playlist.create!(title: 'playlist1', user: u1)
p2 = Playlist.create!(title: 'playlist2', user: u2)
p3 = Playlist.create!(title: 'playlist3', user: u3)
p4 = Playlist.create!(title: 'playlist4',  user: u4)
p5 = Playlist.create!(title: 'playlist5', user: u5)
p6 = Playlist.create!(title: 'playlist6', user: u5)
p7 = Playlist.create!(title: 'playlist7', user: u5)

pl1 = PlaylistSong.create!(playlist: p1, song: s1)
pl2 = PlaylistSong.create!(playlist: p2, song: s2)
pl3 = PlaylistSong.create!(playlist: p3, song: s3)
pl4 = PlaylistSong.create!(playlist: p4, song: s4)
pl5 = PlaylistSong.create!(playlist: p5, song: s5)
pl6 = PlaylistSong.create!(playlist: p1, song: s6)
pl7 = PlaylistSong.create!(playlist: p2, song: s7)
