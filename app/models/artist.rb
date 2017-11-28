class Artist < ActiveRecord::Base
has_many :songs
has_many :genres, through: :songs


    def slug
        name.gsub(" ","-").downcase
    end

    def self.find_by_slug(slug)
        Artist.all.find{|song| song.slug == slug}
    end

end