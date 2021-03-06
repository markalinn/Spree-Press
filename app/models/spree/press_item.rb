module Spree
  class PressItem < ActiveRecord::Base
    has_and_belongs_to_many :products, :uniq => true
    validates_presence_of :name #, :collection_group_id
    validates_uniqueness_of :name #, :scope => [:collection_group_id]

    default_scope :order => 'position'

    has_attached_file :thumbnail,
                      :styles => { :mini => '48x48>', :small => '75x150>', :medium => '152x304>', :large => '940x1880>' },
                      :default_style => :medium,
                      :url => '/spree/press_items/:id/thumbnail/:style/:basename.:extension',
                      :path => ':rails_root/public/spree/press_items/:id/thumbnail/:style/:basename.:extension'

    has_attached_file :image,
                      :styles => { :mini => '96x48>', :small => '300x150>', :medium => '796x398>', :large => '940x1880>' },
                      :default_style => :medium,
                      :url => '/spree/press_items/:id/image/:style/:basename.:extension',
                      :path => ':rails_root/public/spree/press_items/:id/image/:style/:basename.:extension'

    attr_accessible :name, :description, :thumbnail, :image, :product_ids
  end
end