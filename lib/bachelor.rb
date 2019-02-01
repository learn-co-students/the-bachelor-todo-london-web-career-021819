def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do|array|
    if array["status"] == "Winner"

      #when found, in that hash, get the value of name key
      return array["name"].split("").first
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array|
    array.each do |describe|
      describe.each do |key, value|
        binding.pry

        if value == occupation
          return describe["name"]
        end
      end
    end

end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |describe|
      binding.pry

      if describe["hometown"] == hometown
         #increase the count by 1
        count += 1
      end
    end
  end
  count
end


def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |describe|
      binding.pry

      if describe["hometown"] == hometown
        return describe["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age = 0
  count= 0
  data[season].each do |array|
      array.each do |key, value|
        #increase the count in each season
        count += 1

        #add the ages of every season and turn them into floor value so we can devide decimal number
        age += array["age"].to_f
      end
  end
  #average = age/count and round the number
  (age/count).round
end
