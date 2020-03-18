class ResetMenuReleasedJob < ApplicationJob
  queue_as :default

  def perform
    User.all.each do |user|
      user.update(menu_released: false)
    end
    puts 'DONE !!!!!!!!'
  end
end
