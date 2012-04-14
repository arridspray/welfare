class State < ActiveRecord::Base
  has_many :food_forms
  has_many :wic_forms
  has_many :unemployment_forms
  has_many :ssi_forms
  has_many :medicare_forms
  has_many :housing_forms
  has_many :sectioneight_forms
  has_many :tanf_forms
end
