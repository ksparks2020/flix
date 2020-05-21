module MoviesHelper

    def total_gross(movie)
        if movie.flop? 
            "This movie was a Flop!  It only earned " + number_to_currency(movie.total_gross, precision: 0)
        else
            "This movie was a Hit!  It earned " + number_to_currency(movie.total_gross, precision: 0)
        end
    end

    def year_of(movie)
        movie.released_on.year
    end    

    def description(movie)
        truncate(movie.description, length:40, separator: ' ')
    end

end
