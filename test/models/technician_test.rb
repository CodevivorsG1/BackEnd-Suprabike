<<<<<<< HEAD
=======
# == Schema Information
#
# Table name: technicians
#
#  id                     :integer          not null, primary key
#  id_technical           :integer
#  NameTec                :string
#  SurnameTec             :string
#  typeworktec            :string
#  costhourtec            :float
#  phonenumtec            :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  authentication_token   :string(30)
#

>>>>>>> marlon
require 'test_helper'

class TechnicianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
