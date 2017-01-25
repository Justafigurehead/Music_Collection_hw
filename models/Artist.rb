require('pg')
require_relative('../db/SqlRunner')


class Artist

attr_reader :name,:id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO artists(name) VALUES ('#{@name}') returning *;"
    result = SqlRunner.run( sql )
    @id = result.first["id"].to_i
    return "You have successfully saved an artist."
  end


  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run( sql )
     all_artists = artists.map{|artist| Artist.new(artist)}
    return all_artists
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id};"
    albums = SqlRunner.run(sql)
    result = albums.map{|album| Album.new(album)}
    return result

  end

end
