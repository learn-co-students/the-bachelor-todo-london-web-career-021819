require "pry"

def get_first_name_of_season_winner(data_hash, season)
  season_winner = nil

    data_hash.each do |season_number, season_contestants_hash|
      if season_number == season
        season_contestants_hash.each do |contestant_hash, value|

          if contestant_hash["status"] == "Winner"
            season_winner = contestant_hash["name"].split.shift
          end
        end
      end
    end
    season_winner
end

def get_contestant_name(data_hash, occupation)
    data_hash.each do |season_number, season_contestants_hash|
    season_contestants_hash.each do |contestant_hash, value|

    if occupation == contestant_hash["occupation"]
      return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data_hash, hometown)
  counter = 0
        data_hash.each do |season_number, season_contestants_hash|
        season_contestants_hash.each do |contestant_hash, value|

          if hometown == contestant_hash["hometown"]
            counter += 1
          end
      end
   end
   return counter
end


def get_occupation(data_hash, hometown)
    data_hash.each do |season_number, season_contestants_hash|
    season_contestants_hash.each do |contestant_hash, value|

      if hometown == contestant_hash["hometown"]
        return contestant_hash["occupation"]
     end
   end
 end
end

def get_average_age_for_season(data_hash, season)
  age_total = 0
  num_of_contestants = 0

  data_hash[season].each do |contestant_hash|
    age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
