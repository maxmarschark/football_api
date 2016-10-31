# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  team_city  :string
#  team_name  :string
#  mascot     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
  has_many :players
end
