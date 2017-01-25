require('pg')
require_relative('../db/SqlRunner')

class Album

  def initialize ( options )
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i
    @artist_id = options['artist_id'].to_i if options['artist_id']
  end

  def save()
    sql = "INSERT INTO albums(title, genre, artist_id) VALUES ('#{@title}', '#{@genre}','#{@artist_id}') returning *;"
    result = SqlRunner.run ( sql )
    @id = result.first['id'].to_i
    return "You have successfully saved an album."
  end


  def self.all()

    sql = "SELECT * FROM albums;"
    result = SqlRunner.run( sql )
    all_albums = result.map{|album| Album.new( album )}
    return all_albums
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    result = SqlRunner.run(sql)

    album_artist_name = result.map{|artist| Artist.new(artist)}
    return album_artist_name
  end


end