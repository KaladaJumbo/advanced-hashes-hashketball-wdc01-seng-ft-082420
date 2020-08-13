# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def all_players
  # takes the gmae hash and returns array of all players
  
  game = game_hash
  
  game_array = game[:home][:players] + game[:away][:players]
  
  return game_array
  
end

def players_on_team(name)
  
  game = game_hash
  
  if game[:home][:team_name] == name
    return game[:home][:players]
  elsif game[:away][:team_name] == name
    return game[:away][:players]
  else 
    puts "no team called #{name} found"
  end
  
  
end


def num_points_scored(name)

  players_array = all_players
  
  players_array.each do |player|
    
    if player[:player_name] == name
      return player[:points]
    end
    
  end
    
  
end


def shoe_size(name)
  
  players_array = all_players
  
  players_array.each do |player|
    
    if player[:player_name] == name
      return player[:shoe]
    end
    
  end
    
  
end

def team_colors(name)
  
  game = game_hash
  
  if game[:home][:team_name] == name
    return game[:home][:colors]
  elsif game[:away][:team_name] == name
    return game[:away][:colors]
  else 
    puts "no team called #{name} found"
  end
  
end

def team_names
  
  game = game_hash
  names = [game[:home][:team_name], game[:away][:team_name]]
  
  return names
  
end

def player_numbers(name)
  
  game = game_hash
  players = players_on_team(name)
  nums_array = []
  
    
    players.each do |var|
      nums_array << var[:number]
    end
    
    return nums_array
 
  
end


def player_stats(name)
  
  players_array = all_players
  
  players_array.each do |player|
    
    if player[:player_name] == name
      return players_array[player]
    end
    
  end
    
  
end

def big_shoe_rebounds
  
  players_array = all_players
  current_biggest = 0
  stat_of_player = {}
  
  players_array.each do |var|
    
    if shoe_size(var[:player_name]) > current_biggest
      player_with_biggest = var[:player_name]
    end
    
    binding.pry
    stat_of_player = player_stats(player_with_biggest)
    return stat_of_player[:rebounds]
    
  end
  
end


def most_points_scored
  
  
end

def winning_team
  
  
end

def player_with_longest_name
  
  
end

def long_name_steals_a_ton?
  
  
end



# Write code here
binding.pry