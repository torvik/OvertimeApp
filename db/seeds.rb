@employee = Employee.create(email: "teste@teste.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Dell", phone: "5521995629323")
AdminUser.create(email: "admin@admin.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "Name", phone: "5521995629323")

puts "2 user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit Logs have been created"

# 100.times do |post|
#     Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur 
#     adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
#         quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor 
#         in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
#         cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#          user_id: @user.id, overtime_request: 2.5 )
# end

# puts "100 Posts have been created"

