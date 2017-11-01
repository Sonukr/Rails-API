class Person
  include Mongoid::Document
  include Mongoid::Timestamps  # to store created and updated time

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :notes, type: String

end
