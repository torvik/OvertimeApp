@user = User.create(email: "teste@teste.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Dell", phone: "5521995629323")
@admin = AdminUser.create(email: "admin@admin.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Dell", phone: "5521995629323")

puts "2 user created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5 )
end

puts "100 Posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit Logs have been created"