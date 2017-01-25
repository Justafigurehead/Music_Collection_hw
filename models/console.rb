require('pry-byebug')
require_relative('Artist')
require_relative('Album')

#---- Artists 
  artist_1 = Artist.new({'name' => 'The Killers'})
  artist_2 = Artist.new({'name' => 'The Prodigy'})

 artist_1.save

#---- Albums

  album_1 = Album.new({'title' => 'Sawdust', 'genre' => 'alternative rock(?)', 'artist_id' => artist_1.id})
  album_2 = Album.new({ 'title' => 'World\'s On Fire','genre' => 'alternative dance', 'artist_id' => artist_2.id })
#------- Functions

 

binding.pry
nil