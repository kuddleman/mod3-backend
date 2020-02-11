# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(password_digest: 'password', email: 'ab@gmail.com', first_name: 'Tom', last_name: 'Steyer')
User.create(password_digest: 'password', email: 'bc@gmail.com', first_name: 'Amy', last_name: 'Klobochar')
User.create(password_digest: 'password', email: 'de@gmail.com', first_name: 'Bernie', last_name: 'Sanders')
User.create(password_digest: 'password', email: 'ef@gmail.com', first_name: 'Nancy', last_name: 'Pelosi')
User.create(password_digest: 'password', email: 'gh@gmail.com', first_name: 'Barbara', last_name: 'Boxer')

Song.destroy_all
Song.create(name: 'songName1', artist: 'artist1', album: 'album1', genre: 'genre1')
Song.create(name: 'songName2', artist: 'artist2', album: 'album2', genre: 'genre2')
Song.create(name: 'songName3', artist: 'artist3', album: 'album3', genre: 'genre3')
Song.create(name: 'songName4', artist: 'artist4', album: 'album4', genre: 'genre4')
Song.create(name: 'songName5', artist: 'artist5', album: 'album5', genre: 'genre5')
Song.create(name: 'songName6', artist: 'artist6', album: 'album6', genre: 'genre6')
Song.create(name: 'songName7', artist: 'artist7', album: 'album7', genre: 'genre1')
Song.create(name: 'songName8', artist: 'artist8', album: 'album9', genre: 'genre4')
Song.create(name: 'songName9', artist: 'artist2', album: 'album3', genre: 'genre5')
Song.create(name: 'songName10', artist: 'artist6', album: 'album6', genre: 'genre3')
Song.create(name: 'songName11', artist: 'artist6', album: 'album3', genre: 'genre1')
Song.create(name: 'songName12', artist: 'artist7', album: 'album4', genre: 'genre6')
Song.create(name: 'songName13', artist: 'artist1', album: 'album1', genre: 'genre1')
Song.create(name: 'songName14', artist: 'artist9', album: 'album9', genre: 'genre9')
Song.create(name: 'songName15', artist: 'artist7', album: 'album4', genre: 'genre1')

Playlist.destroy_all
Playlist.create(title: 'playlist1')
Playlist.create(title: 'playlist2')
Playlist.create(title: 'playlist3')
Playlist.create(title: 'playlist4')
Playlist.create(title: 'playlist5')
Playlist.create(title: 'playlist6')
Playlist.create(title: 'playlist7')

# PlaylistSong.create(playlist_id: 1, song_id: 12)
# PlaylistSong.create(playlist_id: 2, song_id: 11)
# PlaylistSong.create(playlist_id: 3, song_id: 10)
# PlaylistSong.create(playlist_id: 4, song_id: 9)
# PlaylistSong.create(playlist_id: 5, song_id: 7)
# PlaylistSong.create(playlist_id: 3, song_id: 12)
# PlaylistSong.create(playlist_id: 6, song_id: 10)
