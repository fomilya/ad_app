module Taggable
  extend ActiveSupport::Concern

  included do
    has_many :taggings, dependent: :destroy
    has_many :tags, :through => :taggings, dependent: :destroy
    after_save :save_tags
  end

  def save_tags
    tag_names.split(',').each do |name|
      tag = Tag.find_or_create_by(name: name.strip)
      tags << tag unless tags.exists?(tag.id)
    end
    clean_tags
  end

  def clean_tags
    names = tag_names.split(',').map { |n| n.strip }
    tags.each do |tag|
      tags.destroy(tag) unless names.include?(tag.name)
    end
  end

  def tag_names
    @tag_names.blank? ? tags.map(&:name).join(', ') : @tag_names
  end

  def tag_names=(names)
    @tag_names = names
  end
end
