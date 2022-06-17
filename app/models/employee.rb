class Employee < ApplicationRecord
    has_many :projects, dependent: :destroy
    has_many :clients, through: :projects
end
