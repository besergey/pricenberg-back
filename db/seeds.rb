# frozen_string_literal: true

categories = ['Процессоры', 'Материнские платы', 'Видеокарты', 'Охлаждение', 'Накопители', 'Оперативная память', 'Блоки питания', 'Корпуса', 'Мониторы']

categories.each do |category_name|
  Category.create!(name: category_name)
end
