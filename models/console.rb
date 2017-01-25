require('pry-byebug')
require_relative('Artist')
require_relative('Album')

# Artist.delete_all()
# Album.delete_all()


#---- Artists 
  artist_1 = Artist.new({'name' => 'The Killers'})
  artist_2 = Artist.new({'name' => 'The Prodigy'})

 artist_1.save
 artist_2.save

#---- Albums

  album_1 = Album.new({'title' => 'Sawdust', 'genre' => 'alternative rock(?)', 'artist_id' => artist_1.id})
  album_2 = Album.new({ 'title' => "Worlds On Fire",'genre' => 'alternative dance', 'artist_id' => artist_2.id })
  album_3 = Album.new({'title' => 'The Fat of the Land', 'genre' => 'alternative dance', 'artist_id' => artist_2.id})
#------- Functions

 album_1.save
 album_2.save
 album_3.save

binding.pry
nil