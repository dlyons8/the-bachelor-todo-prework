def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasonx, stats|
    if seasonx == season
      stats.each do |hash|
        if hash["status"] == "Winner"
          return hash["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.values.flatten.each do |hash|
  if hash["occupation"] == occupation
    return hash["name"]
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.values.flatten.count {|hash| hash["hometown"] == hometown}
end

def get_occupation(data, hometown)
  # code here
  data.values.flatten.each do |hash|
  if hash["hometown"] == hometown
    return hash["occupation"]
  end
end
end

def get_average_age_for_season(data, season)
  # code here
  count = data[season].length
  numerator = data[season].map {|hash| hash["age"].to_f}.reduce(:+)
  (numerator/count).round
end
