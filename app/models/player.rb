# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  age        :integer
#  height     :integer
#  wieght     :integer
#  college    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord
end