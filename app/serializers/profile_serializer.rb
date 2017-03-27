class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :gender, :age, :born_on
end
