class Author < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: 'Password doesn\'t match its confimation filed', if: :password
end
