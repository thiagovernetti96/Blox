require 'test_helper'

class SalaTest < ActiveSupport::TestCase
  belongs_to :user
  validates :title,presence :true
end
