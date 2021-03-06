class InsuranceType < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  has_many :fields, class_name: "InsuranceField"
  has_many :products
  accepts_nested_attributes_for :fields, allow_destroy: true
end
