class Category < ApplicationRecord
  mount_uploader :picture, PictureUploader

  validates :name, presence: true, uniqueness: true

  CATEGORY_MAP = {
    "Процессоры" => :processor,
    "Видеокарты" => :videocard,
    "Твердотельные накопители" => :solid_drive,
    "Жесткие диски" => :hard_drive,
    "Оперативная память" => :memory_kit
  }.freeze
end
