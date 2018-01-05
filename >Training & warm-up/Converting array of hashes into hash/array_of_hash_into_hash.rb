#Group the array of hashes below into a hash, where each key of the hash is a sport,
#and each value of the hash is a list of names of people who play that sport.


players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

players_by_sport = {
}

players.each { |player|
  sport = player[:sport]
  name = player[:name]

  if players_by_sport[sport] == nil
    players_by_sport[sport] = []
  end

  players_by_sport[sport].push(name)
}

players_by_sport
