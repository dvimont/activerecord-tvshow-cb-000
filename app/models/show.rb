class Show < ActiveRecord::Base
  class << self
    def highest_rating()
      return self.maximum("rating")
    end

    def most_popular_show()
      return self.where(rating: self.highest_rating).first
    end

    def lowest_rating()
      return self.minimum("rating")
    end

    def least_popular_show()
      return self.where(rating: self.lowest_rating).first
    end

    def ratings_sum()
      return self.sum(:rating)
    end

    def popular_shows()
      return self.where("rating > 5")
    end

    def shows_by_alphabetical_order()
      return self.order(:name)
    end
  end
end
