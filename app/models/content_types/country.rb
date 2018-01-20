class Country < ActiveRecord::Base
  #acts_as_paranoid

  validates :name, presence: true

  belongs_to :user
  validates :user_id, presence: true

  include BelongsToUniverse

  include HasAttributes
  include HasPrivacy
  include HasContentGroupers
  include HasImageUploads
  include HasChangelog

  include Serendipitous::Concern

  include Authority::Abilities
  self.authorizer_name = 'ExtendedContentAuthorizer'

  relates :towns, with: :country_towns
  relates :locations, with: :country_locations
  relates :languages, with: :country_languages
  relates :religions, with: :country_religions
  relates :landmarks, with: :country_landmarks
  relates :creatures, with: :country_creatures
  relates :floras, with: :country_floras

  def self.content_name
    'country'
  end

  def self.color
    'lighten-2 text-lighten-2 brown'
  end

  def self.icon
    'explore'
  end
end
