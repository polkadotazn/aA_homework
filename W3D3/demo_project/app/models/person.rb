class Person < ApplicationRecord
  validates :name, :house_id, presence: true

  belongs_to :houses,
    class_name: :House,
    primary_key: :id,
    foreign_key: :house_id

end
