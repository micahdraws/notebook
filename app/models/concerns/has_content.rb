require 'active_support/concern'

module HasContent
  extend ActiveSupport::Concern

  included do
    # Base content types
    has_many :universes
    has_many :characters
    has_many :items
    has_many :locations

    # Extended content types
    has_many :creatures
    has_many :races
    has_many :religions
    has_many :magics
    has_many :languages
    has_many :groups

    # Collective content types
    has_many :scenes

    has_many :attribute_fields
    has_many :attribute_categories
    has_many :attribute_values, class_name: 'Attribute'

    def content
      {
        characters: characters,
        items: items,
        locations: locations,
        universes: universes,
        creatures: creatures,
        races: races,
        religions: religions,
        magics: magics,
        languages: languages,
        scenes: scenes,
        groups: groups
      }
    end

    def content_count
      [
        characters.length,
        items.length,
        locations.length,
        universes.length,
        creatures.length,
        races.length,
        religions.length,
        magics.length,
        languages.length,
        scenes.length,
        groups.length
      ].sum
    end

    def public_content
      {
        characters: characters.is_public,
        items: items.is_public,
        locations: locations.is_public,
        universes: universes.is_public,
        creatures: creatures.is_public,
        races: races.is_public,
        religions: religions.is_public,
        magics: magics.is_public,
        languages: languages.is_public,
        scenes: scenes.is_public,
        groups: groups.is_public
      }
    end

    def public_content_count
      [
        characters.is_public.length,
        items.is_public.length,
        locations.is_public.length,
        universes.is_public.length,
        creatures.is_public.length,
        races.is_public.length,
        religions.is_public.length,
        magics.is_public.length,
        languages.is_public.length,
        scenes.is_public.length,
        groups.is_public.length
      ].sum
    end

    def recent_content
      [
        characters, locations, items, universes,
        creatures, races, religions, magics, languages,
        scenes, groups
      ].flatten
        .sort_by(&:updated_at)
        .last(7)
        .reverse
    end
  end
end