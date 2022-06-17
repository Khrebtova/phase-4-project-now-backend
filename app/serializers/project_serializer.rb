class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_id, :employee_id, :completed
  has_one :client
  has_one :employee
end
