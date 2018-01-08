class Category < ApplicationRecord
	has_many :products, dependent: :destroy
	accepts_nested_attributes_for :products, reject_if: lambda {|attributes| attributes['name'].blank?}
end
