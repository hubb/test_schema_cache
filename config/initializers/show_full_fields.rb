# frozen_string_literal: true

ActiveSupport::Notifications.monotonic_subscribe("sql.active_record") do |_, _, _, _, payload|
  sql = payload[:sql]

  if sql.include?("SHOW FULL FIELDS")
    puts "SHOW FULL FIELDS queries are not allowed"
  end
end
