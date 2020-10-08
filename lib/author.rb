class Author

    attr_accessor :name, :author

    def initialize(name)
        @name = name
        @songs = []
    end

    def posts
        Post.all.select {|title| title.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end

end
# class Artist

#     attr_accessor :name

#     def initialize(name)
#         @name = name
#         @songs = []
#     end

#     def songs
#         Song.all.select {|title| title.artist == self}
#     end

#     def add_song(song)
#         song.artist = self
#     end

#     def add_song_by_name(name)
#         song = Song.new(name)
#         song.artist = self
#     end

#     def self.song_count
#         Song.all.count
#     end

# end