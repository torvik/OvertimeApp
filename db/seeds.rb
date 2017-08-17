@user = User.create(email: "teste@teste.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Dell", phone: "5521995629323")
@admin = AdminUser.create(email: "admin@admin.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Dell", phone: "5521995629323")

puts "2 user created"

