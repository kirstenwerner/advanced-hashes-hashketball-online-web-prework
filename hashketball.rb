# Write your code here!
require 'pry'

def game_hash 
game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      :"Alan Anderson" => {
        :number => 0, 
        :shoe => 16, 
        :points => 22, 
        :rebounds => 12, 
        :assistst => 12, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1 
      },
      :"Reggie Evans" => {
        :number => 30, 
        :shoe => 14, 
        :points => 12, 
        :rebounds => 12, 
        :assistst => 12, 
        :steals => 12, 
        :blocks => 12, 
        :slam_dunks => 7 
      },
      :"Brook Lopez" => {
        :number => 11, 
        :shoe => 17, 
        :points => 17, 
        :rebounds => 19, 
        :assistst => 10, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 15 
      },
      :"Mason Plumlee" => {
        :number => 1, 
        :shoe => 19, 
        :points => 26, 
        :rebounds => 12, 
        :assistst => 6, 
        :steals => 3, 
        :blocks => 8, 
        :slam_dunks => 5 
      },
      :"Jason Terry" => {
        :number => 31, 
        :shoe => 15, 
        :points => 19, 
        :rebounds => 2, 
        :assistst => 2, 
        :steals => 4, 
        :blocks => 11, 
        :slam_dunks => 1 
      }
    }
  }, 
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      :"Jeff Adrien" => {
        :number => 4, 
        :shoe => 18, 
        :points => 10, 
        :rebounds => 1, 
        :assistst => 1, 
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2 
      },
      :"Bismak Biyombo" => {
        :number => 0, 
        :shoe => 16, 
        :points => 12, 
        :rebounds => 4, 
        :assistst => 7, 
        :steals => 7, 
        :blocks => 15, 
        :slam_dunks => 10 
      },
      :"DeSagna Diop" => {
        :number => 2, 
        :shoe => 14, 
        :points => 24, 
        :rebounds => 12, 
        :assistst => 12, 
        :steals => 4, 
        :blocks => 5, 
        :slam_dunks => 5 
      },
      :"Ben Gordon" => {
        :number => 8, 
        :shoe => 15, 
        :points => 33, 
        :rebounds => 3, 
        :assistst => 2, 
        :steals => 1, 
        :blocks => 1, 
        :slam_dunks => 0 
      },
      :"Brendan Haywood" => {
        :number => 33, 
        :shoe => 15, 
        :points => 6, 
        :rebounds => 12, 
        :assistst => 12, 
        :steals => 22, 
        :blocks => 5, 
        :slam_dunks => 12 
      }
    }
  }
}
end

def num_points_scored(name)
  name = name.to_sym 
  points_scored = 0
  game_hash[:home][:players].each do |player, data|
    if player == name
      data.each do |statistic, info|
        if statistic == :points
          points_scored = info
        end 
      end
    end
  end
  game_hash[:away][:players].each do |player, data|
    if player == name
      data.each do |statistic, info|
        if statistic == :points
          points_scored = info
        end 
      end
    end
  end
  points_scored 
end 


def shoe_size(name)
  name = name.to_sym 
  size = 0
  game_hash[:home][:players].each do |player, data|
    if player == name
      data.each do |statistic, info|
        if statistic == :shoe
          size = info
        end 
      end
    end
  end
  game_hash[:away][:players].each do |player, data|
    if player == name
      data.each do |statistic, info|
        if statistic == :shoe
          size = info
        end 
      end
    end
  end
  size 
end 

def team_colors(team_name)
  
end 







