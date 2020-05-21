class Movie < ApplicationRecord
    def free?
        price.zero? || price.blank?
    end
    def flop?
        total_gross.blank? || total_gross<225_000_000
    end

end
