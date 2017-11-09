class Paper < ActiveRecord::Base
    has_and_belongs_to_many :authors
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true,
                    numericality: true
    

    def self.publishedIn(year)
        where("year == ?", year)
    end
end
