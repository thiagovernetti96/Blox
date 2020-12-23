require 'test_helper'

class UserTest < ActiveSupport::TestCase
  has_many :salas
  GENRES = %w[male female other]
  validates :fullname, presence:true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :genre, presence: true, inclusion: { in: GENRES }
end
